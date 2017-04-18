// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Sun Apr 16 19:08:42 2017
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
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "15" *) 
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
noiT3LCBPO2Se8G6tb+qztKpXsShhyUyZMuCbgeqZKlY1oQSizrFiJdH+oG/+E7bCSISZNBI8DSp
IzPIQWmTj163mERF8FDTJ/nIMSFQoMxO5qwUuFGNUDuTrzT6e6kCRMekrzrwTxkPWIpL9ehYLb51
WhMVfSTqswJ8aq5yf2KPnXta8PpLUawFg88yiO5sS0/c3BPHW8/xUiDmW9SLgF9vyIX8tt+M8bk3
msj3SKEKQq7yB7AzS+Yeci/v9VR+SyDPZMi1iCHF/btx2Hr248lW77gv0Ve3rES3JyP4tRLSe2cl
Zp/4AsLnAZ5Hm6ZOc+VTXu/4YtehNzzRGqX66w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
Do1LjjtTthrzeS0bjSwBRGhux7hMEBoNLHJNg80VaxhEqj5M/ziOCtqZuIuwyCZUHQlttP3lKLDt
N5RY0H+yWbYFl8OaQEk3+/oxmUws9et+WTbiifKxq0OkZXzqZH5LD3yzWiWuRJ8ByMsO+e+7/13v
4xXA2i8JBX0RImKuRLDujUx9uCz+Gp0DOwILlt3gfljrNG1hzclaVWD6xvkUG4aayVKPuITbDCmr
Pb2bfQTg2XgANx/5n6KX4WgLVan4CQZ8sgbBPqc/ZgGsHMBylWcBdobj7R674iAc2SK2hDLeWGKq
DohrwA8RwKPg2AsnglzlBruMz5MJJhomuqWlXQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7200)
`pragma protect data_block
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
1SaOdjK2Qn1yHenmlEh0C5qP
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
