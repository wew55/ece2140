// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Fri Apr 14 17:40:42 2017
// Host        : DESKTOP-1Q958FF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub c:/Users/Darius/FC/FC.srcs/sources_1/ip/c_addsub_0/c_addsub_0_stub.v
// Design      : c_addsub_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_10,Vivado 2016.4" *)
module c_addsub_0(A, B, S)
/* synthesis syn_black_box black_box_pad_pin="A[63:0],B[63:0],S[63:0]" */;
  input [63:0]A;
  input [63:0]B;
  output [63:0]S;
endmodule
