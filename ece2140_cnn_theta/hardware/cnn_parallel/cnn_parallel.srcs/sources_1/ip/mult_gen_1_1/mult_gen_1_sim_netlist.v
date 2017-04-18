// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Sun Apr 16 19:08:42 2017
// Host        : wen-work running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top mult_gen_1 -prefix
//               mult_gen_1_ mult_gen_1_sim_netlist.v
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
