// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Sep  6 17:54:11 2025
// Host        : DESKTOP-INFKKCG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top shrink_dsp_macro_1 -prefix
//               shrink_dsp_macro_1_ shrink_dsp48_macro_1_sim_netlist.v
// Design      : shrink_dsp48_macro_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "shrink_dsp48_macro_1,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module shrink_dsp_macro_1
   (CLK,
    CE,
    SCLR,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [8:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [8:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [17:0]P;

  wire [8:0]A;
  wire [8:0]B;
  wire CE;
  wire CLK;
  wire [17:0]P;
  wire SCLR;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "9" *) 
  (* C_B_WIDTH = "9" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "17" *) 
  (* C_REG_CONFIG = "00000000000000000000000001000000" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  shrink_dsp_macro_1_dsp_macro_v1_0_3 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(CE),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
eXu8CP/59WSryM+0TrJm4ivvR8jHZUvAhTM/3bTefAJXrKDHPLzKye7Mt1lRDbXJAjZ6BIKO4kwC
E0lcvSrV/Q3dyfvAxtUp+z/aW8VJRK9qFHdYmlvgE+RPpMa3xR2aZy6U8Oi3M/l6Zx+25t9AX8je
jkkih0AxnCIBN1VIUqs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vgEvPTqFnqLdQAsx6AXakuctSKMkEG2yHSn4TsDpQk1BrjbzuBtnELewLyu5ZXRBjC8xFsQPW3cH
Ijezov8BDFEzYCheSybl50hwqRI4T0U4N2aoukd55sy9/NN/+A/8Xjl2+g59+0dy6ah8l8JC/qit
l31TRSDYlJTLd1mQWx3tzFmN+bObNeP3maLIbD4XAjkgQ7yM5fP17d00xtU7feiIsq+x7OCl8dNg
Lb6/MRQ7tcASiCzijiw1uXAToCUdMxgwgJod3u1zhviPycgXmq35FZKuwpZjHbl0RDdbj+VG8Bpj
4BU8mxfWb+gvLPK6UlY/G7koaN6b8jABhJx6dA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
AaFM62USO7nm3XNUl+p18THQcjom9piiWV6niKyzDrgB89YGfBopTWrrBST1q+vznrsm1xYeBw0/
aUlMx3aaTJAO5tmM1PHkJSpudvwlb+QPsKCQ1U+sK88kH8wB1yOXWndOr9j1qQOaW7Dl8gr3SftQ
YtUGanmwYxL2tWG2WK8=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C0y/vEvU9lV6QG7X1OT8SLSXZuemaWEBdXhrUF9kdwmgdFOawTMiM1GmMDMBgOcJHmcZZR/vHgjX
aW6LgUFWwSJBwd8FgrX2GbEx7xC61Ri0fwxzDG1Tns+5KdLl1XOtx/PL/I9GeE1CXetRMzM+s3HS
VC1otl8i826A3YXs41mtZyFqeu6JcfSKsoWmWhVOohan5pR/xouMVA20kBiN3Kl342JzkDM9tofJ
2U1WQM7I0GeX38EB7rx7N9fUUTsAxbMNkY9cSn5jJdADowfYwHWzjyG57462H4HjgFh3vbI4LtAe
iviGzIl6rjHhqn+uDqLNuNsC+sXc5SpfXzaatg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uBCuIthdOfPzzjz/96GbH63rV6HYJnDrLoe2d7Fu1o3WmbYzd75N6ms8Slm+1ppOkleA/O0EIH9E
QWOljNznnEOpJKNmhXFdvz2kcOCdLA/poOcJXyHw9X9dQS+ds2WUpieCP+bbnrQb3dLDH0qoSWMT
eqT/l+07htuRx2NqmQCnQME7OixqYKIuoYm9qnSnyhn6Cx7fTEYRu+oJvkU+/GVZNd73WLsoCf2y
wX3gEXrilulAXUTqCh319fuOfO1JbckH8V1VQwoiTFvFbtgEDQ29w8Vsrlzbo6S4AtwKCMAZHhfD
jQa/oimM1Xz5RgmjOOAj+3upyFgp1v2sx/6dnw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tt7uUpU++Y1HyXw3H9uOZfR0faSHPJDBUNXzHd0A0mMBQSxHBUQO87ix4I9WYmXI78wSRjF0IGHr
xFa3M9/7SVLvNUBeb0SU1jS231rDwgD2G2uwW8g5/9kqE6FLAHLzrl9r3XHmWFv4+FyylrGJ62as
DP0dCDKjxnw5u1IB5Jms6xkS8WgqGubTQ4tnTj8HIqDjyxiBiVHHjftyFeDq/sV4G+yf3GTex00U
eB5JtuT/qI142GJyVmMhLVH0H7FZQDexSTBHYOyRfNRU/4rja0DQ1G1J1hifhyeiB0KxnWMlTibd
LdoZIikRhz8x8iEr4vjsMkdkpAnpQ3PAMy64QA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AB07luaM6UqGzgUh8UuGEePdazMDdWluSYXVevTEENMZocIMfT6+7peiLi2lFLpT1PZHY0SV1bEB
3MGbnC8HTccfBEybpEbQcthgHlVowXAYniz/2Txe8qyOgo32iW3oqkNBI8+3F9ZSPlDg+JFVzIVA
qX6p9OE5OdkLviZr3HhrGHnr09iaLa0pojKY4jFq+7VRqBz023vKkoYVs0PjJfI6INZ1/WQImSWb
jFYp9N/v0u9E/ihSNdJ7cHFaC7K6PApgCrr3WdKb4sDwuHAEo2YBL+RafV+/bjhXcb36+8fi+Ihp
bOs+vnNa/kMivBt4zh4pkIiWe+NoICqV2/ie5g==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
VBFfqhMRFT4vkmBP645Vb+B3Zb1lr1J3v1UU437hv44KR/OBhVQry6ZFwQmnE4IL8RDeLg0D2tkZ
+Gq6ejrRmUJtMhB7DcRs1bi5keF43hsgq5wg0KTBhh3yUyQJp2rwUcd3hZ940AXSavn+1xjGlJLz
UeHKKlF6m3CSmvReobaVea9RaUO0WwDXmnf/lbeCObhOgaYEBceQjk/5E4hT/c0y8RPW7tDdF2yo
u8/2q5ioXWJ1FseteaZwdHICpZUYihFMiyZHYshN2G9zQtp4k87huvEBbFWggT9c6s3Lee8qIdsH
BXt0uVwINMMM1li7PiKl8l1URiX178BSIcGzdM0ZwSyAyO6i/qWiFsr7cCD1jcwDxUH+rVizdYBx
wfhtDxWf01qjpq13uUUqxxB+xMf58l+wpjFCLmKMgpNYs0S33SG6R8fvJ3IPvJHhVRc/hPupWbcK
hezSkYXnupL+GdSPxPoQZJW7/k8leEwuDKBO/VCfQpPXQR+FxLDNFBDe

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ao2uzJ9cDoOFb4Q+cT2/6EJRN9VWvURi+To0IoDU4YLe3Dr0WyVOAUCUIhb3Y8swY+CKwa+eJzzm
AriAJZAp9p8NujF4gOv+y4wy+eanf3pnOWbMWxsr6TT2S39coNdQ+NAO4aBUP3ZbESI4AbXpCTKA
+KV2gtFESo654X+tD0UNAabhx5OJpkBawo8534pIFBCYn70xDogKM4jXqTVCDr0CleLmgeIOYdIO
5T48N/bB3mluyuxS/Ea1/kS2r1g49hjIWlYnMkQ27NaUI1xAJTAjkrvMTHEKoSIskGvfO6jSWVlF
19HXSOkKJMQeQ0I6TBJ0H1KwHX8XwIuipvGDhg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cOfPDQcOVgGogjmcPnTV301UGX6IioUqB03E8Xri3vRcXwBcKTpi4y7YfQ1yR2aEmfbiM5pR6Dmg
aSsgjczx3UnKAPQ04KTNemZTd/g2GkUnGBUIStwLoe/hNQe5lHGjftW+G3G5R4AiFgFIKun5TMiy
1zx4A78gVdNQw6/qGOcPmIMr4QLoXxwCJXTZANJH7J/NjCGPujAtHBUTmO+EfZg1Tx/8zDIbTI6/
5G7Y4pm0Qk+hm9WLIT90A1er0J3wUix7Gs1s9PIEaCQf2ZpNShPGWNRH/Ur2mctPmtAZOZFzQ0pC
GWCYEgW4DpgHJ2IhrfXCsJSaCpLXbs6q4PNMfg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U+hoeLJu0mGrPgrapHExPYgavVzp6rayAygK7og7DOV5Hv4TgafNfFVE7awXLhXOZvqJdzBGyfom
CjKRvLCoN/TCaaGJLrSEEc1JBJWlLGfGOp6B0CF/xneGkluPUesm/jr0swhp13x1hwb+dQ21XyoY
l+d0hoCv7Mg1I/ZRcpVEQ4dhBQIk1f+qLrj24zq3fVg2z5WsPjn/wtkzOx3AjtGwtYK7g5Pov9bp
WvnQzg6v6MXInL2N3KKDsKA23a6Jwb/rXOLbKPQrMfuzuxQjLgYp3PPZ2XLNsy1WQaAmbtt9Up3C
ateKqQHUXotEWSFhUatl+zetKvzHdfKEmHGrDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28240)
`pragma protect data_block
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
s6/Fd5N6Ri7KA0fclFtGQOVsftkB7K4v1Q==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
