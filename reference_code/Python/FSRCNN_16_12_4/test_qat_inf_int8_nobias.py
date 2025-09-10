# test_qat_inf_int8.py
import argparse
import torch
import numpy as np
import PIL.Image as pil_image
import os

from models_inf_int8_nobias import FSRCNN_Int8_Custom
from utils import preprocess, convert_ycbcr_to_rgb, calc_psnr

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--weights-file', type=str, default="/home/aqua/FSRCNN_QUANT_NEW/QAT_DATA/final_7_layerwise_nobias_280/layerwise_int_qat_nobias.pth")
    parser.add_argument('--image-file', type=str, default="/home/aqua/FSRCNN_QUANT_NEW/dog_data/test_img.bmp")
    #parser.add_argument('--image-file', type=str, default="/home/aqua/FSRCNN_QUANT_NEW/archive/Set14/Set14/lenna.png")
    parser.add_argument('--scale', type=int, default=4)
    args = parser.parse_args()

    device = torch.device('cpu')

    # Load model
    model = FSRCNN_Int8_Custom(args.weights_file).to(device)
    model.eval()

    # Load and preprocess image
    image = pil_image.open(args.image_file).convert('RGB')
    image_width = (image.width // args.scale) * args.scale
    image_height = (image.height // args.scale) * args.scale

    hr = image.resize((image_width, image_height), resample=pil_image.BICUBIC)
    lr = hr.resize((hr.width // args.scale, hr.height // args.scale), resample=pil_image.BICUBIC)
    bicubic = lr.resize((lr.width * args.scale, lr.height * args.scale), resample=pil_image.BICUBIC)
    bicubic.save(args.image_file.replace('.', f'_bicubic_x{args.scale}.'))

    lr_tensor, _ = preprocess(lr, device)
    hr_tensor, _ = preprocess(hr, device)
    _, ycbcr = preprocess(bicubic, device)

    # Run inference
    with torch.no_grad():
        preds = model(lr_tensor).clamp(0.0, 1.0)
    #print("preds  min / max :", preds.min().item(), preds.max().item())   # ← 추가

    # print(f"lr_tensor min/max: {lr_tensor.min()} / {lr_tensor.max()}")
    # print(f"preds min/max: {preds.min()} / {preds.max()}")


    min_h = min(hr_tensor.shape[2], preds.shape[2])
    min_w = min(hr_tensor.shape[3], preds.shape[3])

    hr_cropped = hr_tensor[:, :, :min_h, :min_w]
    preds_cropped = preds[:, :, :min_h, :min_w]

    psnr = calc_psnr(hr_cropped, preds_cropped)
    print(f'PSNR: {psnr:.2f}')  

    # Save output
    preds_image = preds.mul(255.0).cpu().numpy().squeeze(0).squeeze(0)
    # preds_image 크기와 ycbcr 크기 맞추기
    min_h = min(preds_image.shape[0], ycbcr.shape[0])
    min_w = min(preds_image.shape[1], ycbcr.shape[1])

    preds_image_cropped = preds_image[:min_h, :min_w]
    ycbcr_cropped = ycbcr[:min_h, :min_w, :]

    output = np.array([preds_image_cropped, ycbcr_cropped[..., 1], ycbcr_cropped[..., 2]]).transpose([1, 2, 0])
    output = np.clip(convert_ycbcr_to_rgb(output), 0.0, 255.0).astype(np.uint8)
    output = pil_image.fromarray(output)
    output.save(args.image_file.replace('.', f'_fsrcnn_int8_inf_x{args.scale}.'))
