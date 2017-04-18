// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Sun Apr 16 18:48:25 2017
// Host        : wen-work running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_1_sim_netlist.v
// Design      : mult_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_1,mult_gen_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_12,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [16:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [16:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
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
  (* C_OUT_HIGH = "16" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_12 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "16" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_12
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
  output [16:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [16:0]P;
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
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
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
  (* C_OUT_HIGH = "16" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_12_viv i_mult
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
mKBSrZsmxZjRrLZoaAAlyhvLUHfVwp6zussjA7DFC66kjYNeFFdhvkHDorf/CawvCBca1+1PSiub
mJxYsfE7Iy3PZNt3ivfP0T7ROJfr7IAYKhB8D5k/ga1+sHPXqnmqhwaM7ojCv7vUkHl2DfWfqnnT
1WFyqTqXJqgKK9f3/Ldyq1SY2Nu3Vu9KmBY8BdBh3UOqJWPP0HoLKaCzGBZ09TYY51Zuk8mRfwOE
kPPOh9fYuNmtongUQuiPLZUy+GVxln+pZxYfzFBFCSDTJ5I1f2Sub1b3SCxPaVCalri9F3zjJX0U
n8EKveJtANCzsCBAftkai+rjzm/2itCX7v1Acw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
GOYkSiMuBpriHNT9xKaKrHTIflsRRvJxVRGjJL+HLt6hDbwpvz55CJ2n/5/7SGGbv9I8bl5yQNGv
8Wg/Me+uXwB9x4pZIuxzUJxhYTrDWDtracmiGadK+PRL9cohoY8SxkR55LrHDTeptHW4sAh2eRGW
1LiOuaOB8fpfLREUqYjjVWB50ovMTMoOsz9Na80CCUBG2UotSX7fXrrB5cecwLB+gqhciwUNwd+I
N3IrA9wCCzaf71ctkfHMfPapzfgVycSKr+Jclfp+A0XOog9mxoHTIBIOiC28ddQqRKdu6szhx2Ia
RyMO36fWvBdPDv2H33Gk1rSyJJOba3S9NaMWdg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7216)
`pragma protect data_block
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
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
