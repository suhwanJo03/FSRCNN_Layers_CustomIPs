// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Sep  6 17:58:54 2025
// Host        : DESKTOP-INFKKCG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top expand_dsp_macro_1 -prefix
//               expand_dsp_macro_1_ expand_dsp48_macro_1_sim_netlist.v
// Design      : expand_dsp48_macro_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "expand_dsp48_macro_1,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module expand_dsp_macro_1
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
  expand_dsp_macro_1_dsp_macro_v1_0_3 U0
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
Ue3yfif096PUaQQR0ZZlJObQuhP+t4PiafLwghV7ihhsaDab4odnv2ONRIlNpKE5lC/lC1/8Ueis
VF5S5iNIpa4XWIogtxRKn8v8gNsJ146IZ/StZlUE3zKOf8W50v+jnblzB/L8Cte0oNSAtrzb+WlM
vipWWV8zlMs6A471RocUXwPaX8+FzzW/ntuNlzz1NsyhmaAoQMlrgKLhxF10FLucoW0bR1pnbGDq
ogNcbQ3ZTYos2CJWUh25eFG9euGrglmjplngSw8b0OE5eeHJfsLwzOMsVx7kx1yYdxgdvHwV96Wd
sPnjCeS24Hi05ttkIMue8wh8hVyGOcYzB+P3lg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rQZtTcQQo/M9nydJaaYiX1zcQC//1WyAIXZfgJys6vjY6L/qZ1SUvl0xWrT8S1O9C63q0HW87ZW8
to+VNcktEeAlwZYt4iOv1iStIJlXwYrBAcl3NK4q8nuzqr2ubqwR9+D06kDXHyAiHtuuen2pBN9z
TyhHDGjA9upR6fLfjGALrFLcGKgTh0nADFVWCzSpTcWBLqb0Y0Zcou/dd1/lkkX8otUFDW6EinYf
EIm2LNrihzTRM+Z/QqBescBMVTG1fmHSom2MTdyBJZo+6nAXg6zCZoizV+/1TBRHvRxWMvukorYp
nlEX3MHi79CyeVg/DJvjTFEo0Clm+E9pxJrhYw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28240)
`pragma protect data_block
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
7pB3ugSHuFqPZ+APbKEPq2jbmq0mJOGolA==
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
