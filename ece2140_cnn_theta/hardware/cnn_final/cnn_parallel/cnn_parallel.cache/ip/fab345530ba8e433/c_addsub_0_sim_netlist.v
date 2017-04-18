// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Sun Apr 16 20:01:22 2017
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
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
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
  (* C_LATENCY = "1" *) 
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
        .CLK(CLK),
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
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) 
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
  wire ADD;
  wire [15:0]B;
  wire CLK;
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
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "16" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_10_viv xst_addsub
       (.A(A),
        .ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
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
ZLF9USAy3b/wfDflSmzyuoveqGrFNKg+lcqZ+jS5hsejGR8i26EvO8LAJwuapQV5mEdHmZO/ovao
oeBsHYKjJgDin7mJkseNbwIMqekXsRlQK9BlFk+I08CR+SmEXAXQzI5Z8wtBcIrBykK5EKcmt291
ayAEub7s4ePSE1vuU+p4z4JZBv0PF6O9va51BY8whcc2EbUkuaXRS9BKzf47y694dO34ntLGF03s
Gw2jvQTeJ6oIJV6JHh/hKDC4arRUddR4zoxnbkE+sZV4wv65CSKK3LPsd11qUgSiTUvGItKHTaG1
LaJaQUE47KZRnKUeJhblR/UNCrZ8DXFdAQYF2w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
qXL0R8Pi2jHgkUVjPvL7g6tSM+eQUrekpkvEcWJyFXVUL/AiO5DHQ4HzHJ0kwM2cn2OkG7eg4EQd
8b9++GNCSD5w3ZJ7IR0+w/BhCm8zkrmjBZq3u0SY7W+fxvLfpNv7zLoZ0zeLKveeEIGwKetvk/P6
oR+raLWHEGYXqf8ShJDMlWVnzZtKh6+zK2QZreZ7CeTWFYqhnIrfQwjrjSRNq9k0QBvxwcL4Y3J3
kdVCsVG3CMsSRUxM8hVISuoid5U5ZuwoWbq91mGJYooATTAzknqIKygoCerai2Z/nBtd5H5bPaLy
2AFX77RPluQ7ji54dzC4c+EmmgNfIDMY1zOuSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12544)
`pragma protect data_block
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
b75ntg==
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
