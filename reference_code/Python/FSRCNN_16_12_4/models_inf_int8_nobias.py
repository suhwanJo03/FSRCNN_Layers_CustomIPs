import torch
import torch.nn as nn
import torch.nn.functional as F

class Conv2dInt8(nn.Module):
    def __init__(self, name, weight, bias, w_scale, w_zp,
                 in_scale, in_zp, out_scale, out_zp,
                 in_ch, out_ch, ksize, padding):
        super().__init__()
        self.weight  = weight           # int8
        self.bias    = bias             # int32  ( = b_float / (w_scale*in_scale) )
        self.w_scale = w_scale
        self.w_zp    = w_zp
        self.in_scale = in_scale
        self.in_zp    = in_zp
        self.out_scale = out_scale      # 필요 시 다음 레이어 입력용
        self.out_zp    = out_zp
        self.in_ch, self.out_ch = in_ch, out_ch
        self.kernel_size, self.padding = ksize, padding

    @torch.no_grad()
    def forward(self, x_float):
        # 1)  Activation → uint8 양자화
        # 1)  uint8 → centred int32
        x_q = torch.round(x_float / self.in_scale) + self.in_zp       # uint8
        x_q = torch.clamp(x_q, 0, 255).to(torch.int32)               # uint8 range
        x_q = x_q - self.in_zp                                       # centred, int32

        # 2)  weight centred int32
        w_q = self.weight.to(torch.int32) - self.w_zp

        # 3)  conv in fp32  (no overflow, no saturation)
        y_int = F.conv2d(x_q.float(), w_q.float(),
                        bias=None, padding=self.padding).to(torch.int32)
        y_int += self.bias.view(1, -1, 1, 1)

        # 4)  requant → dequant  (unchanged)
        scale_float = (self.in_scale * self.w_scale) / self.out_scale
        y_q = torch.round(y_int.float() * scale_float)
        y_q = torch.clamp(y_q, -127, 127).to(torch.int32)
        y = (y_q - self.out_zp) * self.out_scale
        y = F.relu(y)
        return y


class FSRCNN_Int8_Custom(nn.Module):
    def __init__(self, sd_path):
        super().__init__()
        sd = torch.load(sd_path, map_location='cpu')
        self.layers = nn.ModuleList()

        def make_conv(name, act_name, shape, padding):
            weight = sd[f"{name}.weight"]
            bias = sd[f"{name}.bias"]
            w_scale = sd[f"{name}.w_scale"].item()
            w_zp = sd[f"{name}.w_zp"].item()
            out_scale = sd[f"{act_name}.out_scale"].item()
            out_zp = sd[f"{act_name}.out_zp"].item()
            return Conv2dInt8(name, weight, bias, w_scale, w_zp,
                              self.in_scale, self.in_zp,
                              out_scale, out_zp,
                              shape[1], shape[0], shape[2:], padding)

        self.in_scale = sd['input_scale'].item()
        self.in_zp = sd['input_zp'].item()
        cur_s, cur_zp = self.in_scale, self.in_zp   

        for conv_name, act_name, shape, pad in [
                ("first_part.0",  "first_part.2",  (16, 1, 5, 5), 2),
                ("mid_part.0",    "mid_part.2",    (12, 16, 1, 1), 0),
                ("mid_part.3",    "mid_part.5",    (12, 12, 3, 3), 1),
                ("mid_part.6",    "mid_part.8",    (12, 12, 3, 3), 1),
                ("mid_part.9",    "mid_part.11",   (12, 12, 3, 3), 1),
                ("mid_part.12",   "mid_part.14",   (12, 12, 3, 3), 1),
                ("mid_part.15",   "mid_part.17",   (16, 12, 1, 1), 0),
        ]:
            w_s  = sd[f"{conv_name}.w_scale"].item()
            w_zp = sd[f"{conv_name}.w_zp"].item()
            out_s  = sd[f"{act_name}.out_scale"].item()
            out_zp = sd[f"{act_name}.out_zp"].item()

            self.layers.append(
                Conv2dInt8(conv_name,
                        sd[f"{conv_name}.weight"],
                        sd[f"{conv_name}.bias"],
                        w_s, w_zp,
                        cur_s, cur_zp,
                        out_s, out_zp,
                        shape[1], shape[0], shape[2:], pad)
            )
            cur_s, cur_zp = out_s, out_zp         # 갱신

        # 마지막 레이어 처리 (float ConvTranspose2d 대체 업샘플링)
        last_weight = sd["last_part.weight"].float() * sd["last_part.w_scale"].item()
        prev_act_scale = self.layers[-1].out_scale  # 이전 레이어의 출력 스케일
        last_bias = sd["last_part.bias"].float() * sd["last_part.w_scale"].item() * prev_act_scale

        self.last_part = nn.ConvTranspose2d(16, 1, kernel_size=9, stride=4, padding=4, bias=False)
        self.last_part.weight.data = last_weight
        #self.last_part.bias.data = last_bias


    @torch.no_grad()
    def forward(self, x):
        for layer in self.layers:
            x = layer(x)
        x = self.last_part(x)
        return x
