// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Sun Apr 16 20:00:18 2017
// Host        : wen-work running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top mult_gen_0 -prefix
//               mult_gen_0_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_12,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module mult_gen_0
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
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
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_12 U0
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
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mult_gen_0_mult_gen_v12_0_12
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
  output [31:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
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
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_12_viv i_mult
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
Un/uLFPQDFsFjk4xY7DO+d35Bz1gCEJfHiCTGAWY61DlOadFFPOALAO0c7JaL3R5SFqXrZS6FWBh
sOLBPNws6Gttb6TBZ70NQR8XsWw4nYhZ3WtA2PCIyd4V11oIzRyWjosFv2Rtj/RBWRupP8Ip8JGj
XuKpqolEmzkmaHX3VQlz8Fq95rUsh3EIPx9ua/UWpnWxQLaroO98Rfv7UlG4oD6woXjiLyTx4Cbg
006GHrFv0DbQariUAEMyUDSVCM0MBJ0DO3WlkJTl17Oe4U+jwI1DEmZ1Ah13wlq6AF1THT95Fbv1
1mqZvvCHyvfOFV284Wn+RfwvNDqL+vwrVdCuyg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
gKzRtEQdy7TxLhqDYjRW0hU0swgotklWQ/ZA8Au3jnFhP5WqQfF69bejfppEEAKlEizNo+xxXSWM
+LB7FpbCTFUNcAnVWpCRv9M2pVUZzbTv5Ia157pLHbEo5rykvDNMUH9nRM+s7TOFphWaqctI9nOJ
6LnGCPJUXxxTB++NG3g2/Sa9aHnX+rTua5jaMweoxyLEJD7d3pDUxMyIyMXtaWCVrMAp8qbGynH5
JAo7uORu0ydx5mQ3XdaR8RIXRgCd2kCRXrnnXq4dnHgwDII4mQr5Dla8jbDDrkNsS0ggz6d5FZJ+
FaEYHOi0VbB1fN7BLUW/DyKes5E3G1o6CdmzTg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
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
