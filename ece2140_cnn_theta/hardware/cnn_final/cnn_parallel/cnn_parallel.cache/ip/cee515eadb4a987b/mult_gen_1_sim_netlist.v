// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Sun Apr 16 19:06:15 2017
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

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "1" *) 
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
KxuDlXWOZE9C4deL5tB2DUPY8JP0vwMBpTFbVj717zzjsbk2VduujJbaB/wQC/HBEqrdRIY3VbX2
9KHFbIWsCurPiTzvYX/bKWtw7jgtzkeBI6UyryghYl6vEDgOKhT3EprTvpibD3tU8YANgqqgwX3l
Aw5Cqisevm/tDPmuMDILsmTBpMEWiCTGUj/cU2kIRXOMJWBd5kk4aVHtGFHw0vAytFNw4VyAhD/n
s8zap0M2XAWP5uHmVBT8dAwdIKNZYf2j4k7xQdVfEY9AUa7zlvBlJ91nL98nt7lopaOL5f1XQM4g
ZEjYUcdzaH8Y4JPM+D5clnEkI6i7rGag8A8i9A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
om1TUyH5bvgnC7yiJE3t/i2AVom9a0T6ByYvD9ddYLaI9en3dSzN2idbbCe5r+5PMehRAPD6mpNz
0aC/C5q3TPhW4E2X5kRHSn2Q2/H65DqjiSn3BqXMaJTRafvoc4tA4oRM2mYwjARMRNribLFVMzKB
+v5jlEWYEO1ETB9V2RKTJZazEwGyPr16tWMozOc7pKqnx91lG/b/RinG88IiVMpz79oCHxFI+Sdm
ENG1r2lNXsN9tfa6KQ0dwh9vnMvAyzKxB2HSs6Um9+7rfQ5BDsSrO+1cckDvwNXHiMZ1wZW4rEyy
ULqzUqRCVaRfw+lXqk/GGq7QR9OkBzENAosh0A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7200)
`pragma protect data_block
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
pM5NiFs5aubMvOP8lyRkW+Re
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
