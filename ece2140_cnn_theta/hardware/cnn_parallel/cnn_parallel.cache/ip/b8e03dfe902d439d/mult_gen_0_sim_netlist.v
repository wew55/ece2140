// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Sat Apr 15 17:12:46 2017
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
   (A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
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
  (* C_LATENCY = "0" *) 
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
        .CLK(1'b1),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "0" *) (* C_MODEL_TYPE = "0" *) 
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
  (* C_LATENCY = "0" *) 
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
        .CLK(1'b0),
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
eosxlmbrjaPMtJ0DsEksH/UOrPkEKeajxPiytyi+gBd1tzkgsNvbNeF0E0Kt6HSNlYTwSZi7KCuj
K6AbpwOy//H1K3VDxQcuTNEkI0d1H2hg61BbpHiuLwOnkmvYC0dpKCGiHFHZrAZR0wHx13xpEUTL
S69GYFSwzYjaAdtdLWSKJsySkfIdFTqpRp4seaVRgmPlz4xNLwZXGiLVm+mEdtojyf8Vb9j/Vc6v
qBESwl5MxDJcYpGmGm0YhO1nqzxGmLPk5nR98f7KHpubvnLBgKvGPtqEeka/YKzhnLsT42lHv6c/
+jx4WJ0JHh1QVmWsp/eM82EPflHMHnE3vI9FlQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
dQNnPrtfaRhO26MrT/q0K7ABZK4WWoDxmJfU7lnXHih8UtvYeuQWQoThrnxUnaqyaAleLpn5MR3q
xNWCdW+/OvNKWkdSrCfTlABR013aZzulDhOutAW7cXpY9+EIUF5EQcE0Ct3CuKLJrpfjw7SD+8Py
omAGZQaOhOpTGx1PM9NyIFovG/UsGAz44eptgqm3XnJp5jQnyVz7+dNzcxBL97FPdgqdCVPcobka
KoWFF18+h7UH0kYh0CYlC/F9rKITYK1If/HGClMT/Pmc5Y73PE4efMJhdVnYjJAs/OzIeq3uOrlA
+F6tzQQpeSTZIvOoiN+79EdSXCBdfiwGktjKvQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6576)
`pragma protect data_block
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
dUd9SMHzGWDirgzisaE6qD7jSXKk
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
