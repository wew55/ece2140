// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Sun Apr 16 19:08:42 2017
// Host        : wen-work running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/wen/Documents/CNN_SoC/cnn_parallel/cnn_parallel.srcs/sources_1/ip/mult_gen_1_1/mult_gen_1_sim_netlist.v
// Design      : mult_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_1,mult_gen_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_12,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module mult_gen_1
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [15:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [15:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_1_mult_gen_v12_0_12 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "15" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_gen_1_mult_gen_v12_0_12
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [15:0]A;
  input [15:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [15:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [15:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_1_mult_gen_v12_0_12_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
bFAU4jIi/OTjA94vyfnsINNZ7LQWPG29HYkOd7NDkV8lqkXg9mHJMdeO/ddubgSM/sXxKlaXmA3R
hjN3ZgzXnQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W4pzVOdCk+Osd8V98r7V424v8cMuJ1L0a2T97bjbYz9BlDO5CsA4mcoNmSuAJFfazBJHS9h+h7LE
KqqXnmtym3qUkXiQdJNFGAe/G4Ovlcklh8LNrMAFBTlnBMiUTEKq7LIeO66Gua02Y/CNVE7QLRmT
qtz5VkYAYCV1hNYQa3k=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
2tP45HcM2W2S/CUrxpXf22Jx9C2GPG9qdptdnbsVyOBzOknq3dZxUr6F7BuApQ+kwIyDuLVal2Je
65TF2B6mOjh8T9V6NrR+TPe8eWIjv0YJkDEVs+CRnIhskOOLkjFF8Q/pZewPfNjOuNcj3NcANJpp
LdLum3sfyqDD8w2O+4U=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iUSxrlEtEIUWrfmSGGc5rEqWsgwtYNtDuohLyKA9r9sc438enelL+pkPMweQgpxELN+5b9Tzja6s
WrutVGs8CgDIVDvzskrCs/IA+qNqUVe1aD8BKxjgQSVXWIhINgLsicgn6SrPI/Qz6L+mQSXsCbYM
u11kSPVCaXbgVjwbU++KCOAGgNoiE0cd5DEbJ99aAVPo1cZ1hmQnpMxwlLDKb6wwCcp/6aJsTJ7u
t/Zx39OPZ7lOcT0DkS0HyIK0jMBnpdj+aD2HTaiCsGksVDbO9lBgmJk1/wprTeehoYlY/At9IGcl
gfaHRLmzjxPOoDl0ILBaYSZhY2cyamDGFPOM3A==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PAF2wcbv+xa/IjRBjPbtAGboK+pB8eyLGc2kWWsniJuUUbHG2DsOmrnVYHw1tbZzhNHrdtSAYba0
GEfPliCJfoeYxFtoQeg9UOP05fSwgTFTJwaTQMC/x9COnSWzNccNzkiDjVAdC70PJ0Wy4vbChycz
apxSfj0hQ3PyiBtg4d2m3ISitycO4STLtlvzoe9wGBP15u+SRMtWvpy4v1X7Se0gq+pbm4UD0QSu
M1RGOMf1CdqDRvvRTMJLvaQFL1A3r8/d5YGEEAG/ZrZ7Jn3yHePnwk9CkjjCtbSa8ZowOhdo0kRQ
3VXl4b/QkGyKlms6UI1CdudkR/1eXKk+oOy+Mg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ip5seGgbaB1WFLqbtP2FDkxBilP47VvmybKUe7Mmnq4U9GIiaj6WuAi35cp5ZmEWP1U/urjIASXD
/O2rMjjxQfJgWYFVLXPHNjuNfMtgOw4zWj8yDVzLbWFBKhzgJSzvethgJSV3H2JzMnyXs6Qq5ADS
y/Zk35yGxgORErmwMw4e3b1cQZ3cJ1GBM1LUY2uby9k4uunnQPN09yI5QAKJmlWaQIVsKr4W9AHP
V1KOjSi13CX4/J/Mmztnjv+Vm3ImkJdgHzljirA4FE8biujTSK/Yh3sNQ4NE/eEBIGQTuV2Btmaa
DgybzA5DG85vb0DOBqqXjwo6j6KZ59rn+bE/7A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
FLJPU8DZ3Rk2nxTVqcQOn2H+FDdYSN10dPDWYuzBjkT+SYwbg9vFsUPHjs3StrundqHwry2j2rsV
xcfrML+sQRvjd7JbnpIMfOTmMFeEcV2yC5BT/B8EKkvlZlCRkUkn6ohtr3wUFNcd/EZS86OWY0Jc
UnP6nOC0hAznfP8c/0oWk8+4ruGeqZGaX8crsdVL3TRbY2se9NISLaok4Xcsd+lMZwPBCK8CVPUZ
0ETLpoGvEOh5v/Va+63op6WCztutigVeRW7m00pcKvo2gAnyKl69pPUhCtdxTmZrGYwSEq4vZMbM
LHJI9OQlNsTGitk99bSLjWxBrYSFjwMLB+621A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
U+dVheWCfxO/k10fAorN4HSav0jmtVWH3VSnCsn3aHqRq7SoKINmRKz6zh/zCuTtjt7+iIfDmbn+
8lhh9oYKjr1yohM2bqYSMT7PICjZQGi4yprODJVcCejI3RDNA+zZfhLYaDWizkkNXgnWluV5Eudn
0oSfjzgeEP9zF0RkS2PXm4YyNFBF2AgDIWV4Nx4XErubjglXWzIxvuxgxKq02HymiKELwfGd+oeZ
Dre9aKLP+ydHn/KITsWwcOxtWEVxRyNmOSo8/KFCdRhE+CO7kcfrbJXkjlpZxvV1r6Q1B2TvjzZS
xgjV5HZorL00Ygv1OyIqiT1w8vBkTCkwpeXp2Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7184)
`pragma protect data_block
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
IIM=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule
`endif
