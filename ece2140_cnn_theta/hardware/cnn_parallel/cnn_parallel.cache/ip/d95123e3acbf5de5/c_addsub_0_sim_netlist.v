// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Sat Apr 15 17:13:41 2017
// Host        : wen-work running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_10,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_10 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_10
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_10_viv xst_addsub
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
