// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Sat Apr 15 17:13:41 2017
// Host        : wen-work running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top c_addsub_0 -prefix
//               c_addsub_0_ c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_10,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module c_addsub_0
   (A,
    B,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "0000000000000000" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "16" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_10 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "16" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_0_c_addsub_v12_0_10
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [15:0]A;
  input [15:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [15:0]S;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "0000000000000000" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "16" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_10_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
fgcHMpDB8YeTXYpoTsmWZ+EpGtmp4ttE4rhLnGC39GZlQ/zJoTz5jsPoaLlJ4UWaOu8wsqCjidiH
ybd7UHh7Iw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Ce9yJwkNvACWlmAFVwVRYhOdCIZZzBisSiZXBvx+NUYf+lxZv1vyZmKRIRYhYQFaRqRT7XkpC1Ec
t+dZjN7MGpN15tip1+lCNk6nbQTIhD1RPmDELP6pl456iOpiQ/ZN6oyRQX4m6uADI4VCap54SPA7
xDAZ2Ihv8VRQzQqKu2s=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
yzmtZb9/BZ4O/Gzgyl5TFGS/WtQ6cUQXqy/uOVfW7wlrbPwEqT6tWciKofSv+CyJbJIVPzK8DKFI
WQJqQsaQvwHoiKvvvszZkqgvpH3DwEqS4ynnWHOJwHB19GcoOlPWiy5xKdCVGPEiN2a3E1iFT033
EH5wjBAeJPtvdeyOkLI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CczA2H+PI5anFc9KY7UKsIXFVNBdxrwuLyvm1R1kZm0IbddJ4LwKIbI7KyLLLLbAYBBP7wxcLmqe
F9t3HL4MVpwq4k/EpCH4FZDSvMDxPR4bzVAo6o1yJxQXLW3+NZAmPCzXZqtSSPYLsiDU+W9GQY7+
1HWJeXGRV4YcEBFMrw/6x47O9rznZwcpvN7ClnZOjFMV6qkda3BftQcnNwgtp2N+BsKgboXbAHKV
zExUhY74xU/ifF/nfy2HapVTvKKx6cjozDkWbYKX6BcnoM4cdYRte+0OO03Cf6J1WNNEdLgK4TLC
xfJwAliutWUOQcBc87pWvMgPIGLJ8vlUAFdzRw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XUGyGZ3f6ddj79v8VJz6tFeEU1K7Q7eXpxBZjIxiM9EM6yeIzUyNcfTtjPmDnlZ+RUHPbdJfKXo/
vqrH8/IP17g81z0rmYCYrrLWAiXXZVnF33Sby5XqXm99P3kbjtJRUqQHubpP9lxi/BwNEM2b+PmB
MKEcRy3QhkDyijUSVDevumkng5ROIwALCPIoFsnDOvu87+q48wG4+JVioc576FSFqZ3zKH+xln5a
0tGbwFbo8dlg6OZgf95UN2jhgacGA/kl7qJB8Iq/75yAi5qhWYQjCPA9zQ2g0VZuIoCqrY5Pz1/d
5FX25JIJkfhGP0833RpKbY6Iszo7lIM1Sha3sw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sY1OhSYlEri9JAkBv9M84SAJcAs2KDpaHeB2dfqS3s74ysd3frt6CyyFk6hNda0+culDUsAjRUVs
x11BMQ4Oo7lonjFlIt6y+8rL2UDn4GB+aEZFgEeAaV6hVtqs+l5mrUc4tqz0ovbu6bKxjVkhrpr9
3LZPe0AWv46dj3Mj7RdMEOaFBpgrDS7uox/mmIiEy3WXfqMlwahcqdRCOkGRbxZDtQPSXfHTdMia
rbflvAE/8GSkcXysduuffU6QTMADbxxBxy1skDfog0aCf/7pXE/cMgAqJn0d/nI9LN6/w/OjZCaV
itzFnyqX9yNrnz11rwDQtSNe9wLD5gUpgOeQrQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
jplhunXRgmFtxiBW2w30EuTvcQkD/KalifE65r4OML5tXIpYaxcAw7PultTNEY0+uPNhHDrIm5jw
NLkbA8yoBoYrUfPKHnGk/OzTsi8kY1CalV6f2/pRIWHI/23AxHv1M4nl4Qa7fSj6x0xwxotfxOYu
/xjNvbGmO8s7MDiAB2eG6Ib4sx9lXhipfXIeibEUiK6FAeMDuZCBbGB6wF1bRycaO9GoQ5aUypMV
404QEzZATjItDPiTy0wYc7xApUS3YoFwAaoPPLSSILmFkVvamtzDC/mf8ag8DaIVyK2k3A9CGQe0
KdUAfYHUi8hS+kdLl79T3KLnar6Xf/cVeVVtZQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
OORpmba0ui4NlwLmKkcoxficslZz0XzY2cbgpEflKPlohXGN1Q/YDNm7GI/NinY5vNcfmSAlPMPB
WcbUJDgpzcIz44NOSWeuS/4qWp30d66FjHD4wYBF1GUrJ2dyAJYEiAt7DMbLsAszHFHE6Jfrqcmt
QfT7W9S1fKOhPirrI2fHPJPQDlOP73tAcG06B0JXygluKRvWkQvwPfqVJ33DDJI4PQbBiTOPmADh
9lfkTGrN3dxxByW7mZ3C/HlXNWP2/Yat33ZVjUrJQMlzi3Lff6+UwQ3qQABs0HRwcD4T1aB3Atvp
mkhS2/okCt+jm/25j27CJxCqTAth9pRkLed0bA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11792)
`pragma protect data_block
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
rcWPYvAj
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
