// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Sun Apr 16 20:00:18 2017
// Host        : wen-work running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_12,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
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
KYQ3ajrA6bZU
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
