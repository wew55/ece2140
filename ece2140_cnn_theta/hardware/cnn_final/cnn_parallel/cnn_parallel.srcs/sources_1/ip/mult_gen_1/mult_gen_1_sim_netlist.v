// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Sun Apr 16 18:48:25 2017
// Host        : wen-work running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/wen/Documents/CNN_SoC/cnn_parallel/cnn_parallel.srcs/sources_1/ip/mult_gen_1/mult_gen_1_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [16:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [16:0]P;
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

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "16" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintex7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
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
qVF5JhWtoNqx9NYV2FvmUiaeBpNa0ZOqebb9UjTCNf6Cj6oD3PLxuiMWYFag/ub1E0FQmRUZfVb+
6/Jc9qaPaavCX50WQYsLx4PaaKOknefXB3EZTdCyZ4LCZwohIca88grdvqI1icWCz9z6yZWJ8xGR
I9It9NAoKLtnRGC/KlL30kdPoM0il/fp38aE98Xbo05j21n8V0jIkg4DZ2nm89fSszSQ8vI/TAG7
UOJHHyRZsbFi685450YYnud5paQiEGLWlZdx9+DcW9U0uJFTqINN/2OzCi+pfXXJaxaxCR3vCyAD
Mc9eex4zwl1r/J3sSF72ekepUCXH2pFSqZjvEg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
cIQfWu15RfauvcW8zf7dCBvem18xW8seSw3WUYG0IJywlgS7z32ypnxT7Yv7Y8FKxBrz0ODqTfed
F8X8KxnsOKSmZKpatWL2IuFu+cAykfdTDLwkRoVDPryCskl1o083yw8aTxIbAllAJUciCPswMOZN
HDyeV7UPsYWZx+uQvHf6gSdt33C/mNaUJJMHVz2F2YtdOrbf1REFVwxpv607sQSy9lwo5fR1t33K
Rk4ek3Uf7oNifq5tjFw7uq/I7BBim8I5A7wLi6ghNSjLnO6Vvq02hsnsyvacA8BjZUFWTpl29inx
oQyXG3s+9STf1u6kGZksRQ3U4AE3idd6m94F+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7200)
`pragma protect data_block
CLPZCBcxqGbhyKzaF0I8T6lnvOx14DRGKyWQJrpECgA2d5ZK45bHEJSp1MXLKcI+wBktSzXfQRMY
eLwZ4U9zVG/LYXHovbtE0DAthqocNLUB8VEpQAVpcWhTMgNFQnWG3z6GWLQeYijNdFAN+D7UBH5H
DgWVxqT2fYdBkKcCj60pnkHxUFZJ1io7PbBIgAOGwx3zY8dx7zlBmTWXu0+uCn8gOvvaTk1Dy6kk
bnBvD0CTNSR7wBX8deQXhqJPh0RHgeyMaYEqWhRN79HVJP1wVCXKQR/JBcZmtovKWTdaaqOE+vzK
8BCFCYTaqt+AR5OxXJ0TQKNT2fk0e7jmf2KDsWIlrQJWTyz028Ug1jtxgI1VYF5g1shaUOU2muPO
EKnhG84nbWyhmvKUtOJ44Nd7vhEBxSXUgt8V0cK2fvpv32FSHMovE9duj3c/aXUdnQXkI4vSzAgJ
Y18bUNZ6qKyih9Mz2nVKBh7arwH6uFVV3ZoYXXhqvK+2xBgXhN0+hNeMZ24IIvlGb2M0vbm37KCZ
j5LOphYA1ze0uFgDJ28q3QfcrLxE2o1SGW7MT6ccTlivM6wGzFuJ9XCk/AS0rnsSC03+RXzQqhX0
oJp65OHMIr2GSvgwX1f8rvwWhRbK30PW73DLxxqyPegXFCc3POC99kFTZvL06afwDcsjVhF6PHoO
gfNITioSDo3KmyEfiTW7mYnGVjlbZvUK9dB9X3K9eR3IQmRktNlK0uKG2u1ZhfaYl3tNIelLiLaV
MxrXc49jxBGLdUADcbBFWFxpaYb0TsL5y6bdjKUtus6G//k7SuS9w5nbsRVRLu6ui02LJzNaqSGk
Y1ochFoKw6kUQ0ypGoz9W1PSIjNk1G+7YfhOI8grHev8hsjMTgEvJM3nrMh3lHZxCgyuN6Dyzjh3
+/t88JXWQL/LTOHbQ6YpKIm1dWTpnQP7/K3ay09BZCOo9CuqHstDXGz3zLrC6uZtEJWpgKNlDKvH
7pRe1uJGfrTQh/mkc2yxzmwptXxxqM/Xz2/vkhV2z4Cbt439i4wtjEW+66QRZNQeflmRjCzlzveK
fVR8T1x6MhFkuC52FTA+oialiMqmURmbRXHCRhC7vlIfbenhhqMn0b+/i42IiV2uLs0RWvMkOPMl
eiS71l2K4OSdq4M4h2E9pt8AqOX6Hb7/vP3PafocKudjgxddv5+V2ksWkmT0cA243RCMN1f7pQiy
OWmYQYw78vzCikl1ME8WeXN3NLw5NJsdczb5gdunbVzHOZh7INt9WU7msQb0uOi14dMItokA8ZHQ
NOzylU+hD8aW1OENr7t+T4xFRNr6YHv7NT0RoJz+qwkg2JO450jrnZKmKQQZ+kfOFjIUZImdemGn
rgtTWmRF1n/asaW4ju218XzbVpN2IvlOv4peTT+Y7gsXuBdwu2J0/zHWZ3qeb3ueMniIc16qs0Bw
28TIz+8Jcs4NE7RKduPvBhN33rJiFA08xklY6sdTVL/Br8t1S6Kah0POvI4k0BBegQ4N4H7GAf9e
tTBSUP6JHeM+JskuoiV3GGvKoI7u/lbJJa4WtQGcxAkZuPWi3wngAoqCW5qWf5b0KlYYL3SXI80B
iSdrxQGQQIKuB9wVDW5KE+gupOt6gLvjQcplhaBEIelYT8ML2YhuhqrkQrJlSMu6xxQHQ45agZV3
BEFn2CoA2eEmsjcVe8+09jgvfs3pO940+17KqyQHxyeeBzjKej4WSI53h0ytVbF3midm7vZ+LU9F
N0WkESIbGungzXD3Fm8TkUqGfLEhla+TjlzyUH2lS/NYL+n69G0EP6CUlnpekfE7p0zPRQ70U6Xz
eH22kwOYeaKZEgkepiEPqYkwUdVeWaJEjtzmarbtkxT2HIsMuP2sKZMAvjLiw/s5f5OKoHsbVdOU
BkP4Zfn4b9Ae44CGYb6idUIngPq/f/UvzQJk/5EYpdF6pMOU/fbcjXj0padFjUItN6pSlGXY54kt
e5ZDNZkpSygBLMBfD9OTCkCAcA0LmuricS/WjsM1jDG/wPFCNb2CxMRa7f+zNioqm66p465zmEap
qwlUfcbC1rhSttRcwmL4yW87KcZB0GQMg23aXrUrcWau4/pkQzLHiztk6f2Y7FdwerEahfSByppA
vxiZ2TnPXGTdcAc3lQEnuy1TUx4mEDRF8SQw995/nKjibBhHGEtRPjIClyJ445IQwtffTf9YlLcb
dogQOH4yExDllS4LchY8W1K8+BZd75BqJpivRDMJcdODi55j/duxxHLtqBhE2ufsKz7csmb86KR8
R33pdx11JPQJEcTLW+rqqlGJXl5PBZ7wBZiMhaOUaFP05oxKPcfp2ibWoZ60WT+lwC/0X0Ib6Mao
uQrXfLiWLCXH1CHi7NOIqdq8QS1YcAsEsoqmhmAAwcd30DX27G9XoN6V7h5gSBoGFBfEvx2LVQtk
diX+2oRkV7jk2xS/edNK5hkO4IUhs+vFLY3xU0AGeB3ye6wLaHuXKfI+ktoEMj59wzSD0I/Pap0R
nBmU+pqL40PQxH5kgNrVpFTUuB2xuAGfI6HcM1FygXwCBxkNYj+EgaB46tYJJ8IwFJ95n2vJKgGo
2yqNnjNdjnjIkA5ioOI7UIHN9eRvFLlv+GcEYYWn5pIhpYp9qiPKl55wdut1WNNOPRFp4N2Uo4BX
BN/LlwgnqQz8xgGLTDP0Q7tAjqa/7AbA75qhP9TZNlMY6FU+esBo+CFOdvCBhea+j921o6FfRfOz
jYirxEUrAKE68OrYZHtUq335/ye2kxskSGRAEeBa8v0wJNkpZW4lCEXUdPw9/buPRPHZyqBk+PZB
xnDGuI112h1stOn4nWNx7RimEEnUGVsOPUKZOpN4Eck2ZTyCiuI7XWc8IwkY1+ieS1jkcXx0tgHr
a7WXNPD3JHVSIoth5qk6K9XFnQLl2qkWFDMW0ZncaX6HKtSyatue0h18GV+Y9LMzcEcXUUMer2PJ
dFD3R3tDJmBPS/1cKJeL4ioxw+O+jzZjyOzDQIdjo8+z9bKziyOqxt0/S4rnaWIdlCpyhRq3wbXd
HxoQVrmUojeag4gyGJF5Igu1PC32SpMhhMJrKowvz/M/MjcGTEEedrTkc17bZQZidkk6UgYT1rS/
Hw/w5lebaOym0RBSy7hv6MacKxf4FN5jyOkJ++x/vcdgercLo1QidJSJ7Nl8PbjS3ONKksRafvtA
FuhoAqxxCNmqgRAk50eNHJVn842XNx3IZmD6F0Q4dF9XTPcRTuU3+oJ9H/FYXiiq3ucqGeAWFJ3N
+MIctbMblnL/dMeBj5vHne+OR5SDp3qFifPDgGSXbr2DFNLrEY5LvLc2tw6qnfbnlsqgjzjetdmx
J3fvuJHoue82Kw0nj1mpIZkiggbo+qbdzs35Yhs4WHh3M6X7TcHquraGe8hn7Bvf9h+J9wLHEbRe
sgAbad72Y3bmB5yXRiiwTnmbCknzDo8GEwt+HTW0hU3uZdajDA99CrMUUlYsSGdtMyte4sqqa7QZ
jEFdiVS8WQU7AbHpgY2NGh2f0nTlKzcWaGNxKKN7dGO3xg3AF5/GbkDydODMgp3zcQ4KYral0P31
1DE2Qbt+ruvygt23sUQJ0MVsAxbxpCPBG8PKdCux5P3kjBgfG1Bkb6BvbLeoyA16zUf9AX/KRopJ
iFiO0KaDzuR252fffuvbGnJUSgfuAlf12nlytB5zcYD+IY3sWai75c/DZe+He6lv2svnXBHBP6O2
p4ncPEYRDXiGNemVlAsm1++xyY6JObH8Y669Qm1CXHbQ/2QKvvlUT7NQPLV7PU+YdJ7b0766cc9r
B+YYVq8lJD6ObOfXlFsciKGLTqWvQyNRU9SxL0RBowsmefv+HZeNfcC3yUczYNezphsYMty2A0V3
lSsVlxeDx1IYYgSYIxptzO7d5qdfEMCtQmQwn7KyXh3lzKdfNSPQi8+WqZjiLkwkzS2wB4F6aDtb
lkxTlneMDyd5Q1SaWqquGIHjxD3aVKMNY9fvfc0XhyvpYV6s3Dq+qlh2HPr2zS4oWg7a/xS8czyf
v7iSZag0OdEsYXHPn9U7WiVkXBQtpTMDutwJdRXt/yaIWFfakRTvTGHWUhTihF95GB2aBT/h9p6Q
NOU6R0s2LE4pgwY7HHPGW1iX8QeoC1BAKIcSUA0DrEbpVSOyNGUl2CHQYbXdDebuxsWvrQ9CzeUi
qNrrERbqHfHLxEeG74kcILJPrMMfV1D1wagLEIBVHmfrzbJ32Gnp4X0bnJ+R5aEYBGDKPTC7Ck+a
ZlfN583gbiAU/Uug3WmFmXgx2JhM/lmqrcnJeBjG9XEcEUpRNK/VIpji6SMrTlHpN4OkmR8WlKQL
AboOpAF4BlPlZv4aUz9oI6OBFEh40EUVbW4BgQ0mqu+DZPTk8TBeTiBvuXiClwGf1cLG+fhizNSW
WTFnWGfYgx/SE8KRVZbWhqklPi4GefdcD22/MeqX1K7B22fmYYgNwUhy1qtzjwEbex0Gawr+LDCt
G5ee3XpYwWp0w1eCTyiqIMW/41Y8my4AxbmtY7wY1pDql1ELnCaGGGAJoo4brfwK56zvQY13s2rR
Hx790J/ZDVRrckD7kOud7uKLrMXQ7th8DIMIhOpXlvwCHsaUfh1qXgT7dc1YRKS4yLvNybNJt+vc
Vgc6bhvNe1m6JqBpjggKtiIgb1pQKlE/NUsQ//X76HDO/S7pxXMKHH0g4v9P5AJQaGDBP5pEParp
2wUoOcHu04Bky5AAIvQ76ho+yYHqIWPShjLGOgxDMUL4PtzOwlOykBS2J7+2OQb7UC40O8OjM1CS
Uw2XRLW0NjUcdNmBJJlsE8ymQzy3Y7rhzcapfVGu6azODMp9QFXANIJXPgDMyrsseNcjHSbDOc6g
3cse5D5ohELjb3w5q50R8pyL8uBvzW83DdzYSdylZeL+6GoRdEmwP+l7ujhF6FirAWmJKFlcj9dA
vBdNf/YzVK8j+npTq5Gcc/pyizpxpqR0KUaRpW/Q9jmdFNqqH8OpuadBWru9bl9TRLl8803gC+U1
6UYcwB/laVez0ZdILcq2BtsUuXJZi05C4fMbqxt+tHQoLMJ51e7q2fzyQV/BVBTTSAVi6e2S6FVp
U+jbU8kfVJ34cuOU9vA+2w8W+Hrt8TcW4lLt4nCEFfINp1Qn9aLB+Uz8Iu8WgwIvyIJnMLJgt8+8
A43D+45ENr+UD7Wqr/WQ/a3HQO8lQOfMW2jvC11ZHb2IC0d+SkJKwF8DTCcrOhwi5X4cvHQ4em3G
ECH2LOBUkTkkGFYXX+jwRJyoS0BwfAx/VVqjt7RQ28ZxR4TSn1C9HD9ABWKlu2sGvoo8I/HZGcsB
sISaYjYP3lAG0QuccReez6GS1TTm+Y1SCeFtU4RKN3NYHZqh8AZdcWCTGMh+QSRT/2f419NBrmvm
B2ZMoNNd5aTzK9AfuSO9VJkP6Z+f1lHU8UtsEIipCKRk0TUHyNw7OPkG9T5MxMXsmeGEfB/rXt9V
NpAzgwpCfrdh4lY22ciVx848M9REw7GuqSnTeN/UUgBeRQtyvdliG3e3CjHfQn6X0ajM2sGyY6ON
IDxselZzjw94gbYuDzqKLdmUw703839RAxJEpmFNtwQo460P1CDN6VNHDJXXNMu8TI/eekGuQfX5
rCfe9Bq4xkhf9oDFa9OC2l30GgeCtHrjOgHqxyE6l7cf3FuyV5g15EcDL1/se03XHUxFGGUcWEQl
9iFODQecxdEbFKX6TYiRQxYwWBxeTiF57R6VtpN16kV3kCnaVv99+x+NhjzHHG5eFIZVqsEQFCUR
jM+vOfnFLCIaWdGzZOSKMnbAY/kVNGedT9iT4byQnnlU+PZn9yt9O9rZzA5gVPNPbIU1e9IBJkYu
+bX9cPwdKIkwCVq00oLVjvQVa9aKg0l8+SB/TZTvugJ4OMTnAfFyb2iZfTRBrFO1iurTi3n7BiEZ
KTAUTZjQSrHfg/W89VbVThIOMN4eiUnnuUE6KjJmN+FSgsu5At8Q6x6euvkVWKsbeE694GRrZoNp
HaCwnXIprfIK9meViDTwaiZNUPzNs3YskhfF15ASQoeii1sCv9HeRsQu8z7IRgvgiEH5oyWdcbVx
DX2SMP6tk2ZNDe5ufL/tK8swQdkHdhbo1m++SbrJlNnnMVaGwowAMbQIwteI0Mhaj4VL1aEdPwKA
FY2kiofR+fGmpVf0gKiaINunwgkYHNOhN9NmxhTU+KyqxQfGkgjbuNQvnHeXToHXu1R1oPTEERZG
eqjBuUQXh9jWKMOn/B+8z6WozjYJ35s/7HX+byx4xhMuHM8BdIGVAhgtS91++NQqy9IfkB2u8JwJ
cMViFrKV0+Lh1vfYyyR6cw/UyAAzhyKRkpPN6gaZKCzyI8j44N/UZ0X5QHZS9vzqm8yEZTsvGvuc
hxZ/dySDRNeC1D4/W17QXnvUQxbWt1xDOYoYVyT5OaaVLoGT10mGAhE3/e3sljlvaloEr/xBQvYt
j99h6pIG3fr8SWvkVGsbc9FDyCdrQbR84BazEezOsBya5ScCKYoMiA6B64MKRhfo0DW6gkwvde7D
B4EnR+lf80Wu40Mu/S4so5qrO8VhAAW7+6JUkH3aVo8s/+3SwXNmq8tqeDAtdPPm2dxHSzrVG1tu
xKKI3E1euDMhyGMoCRb3F672I2ujOe0loYL7Q7hadwxu4kssIxMeryXhp2VmC74CeHypADyGtGuA
depS2FMzdBT1e4/5rydL610BbaKTEMBg7YPBeSw/CjdjtujfbajCAzXBNYcQHEuFq6iw3Unwtzb3
kO8HdxcDKvdZdzEFjXWpWXKlyf5PJ3zgmiMfpbhYmkt/QG8wKn7AwPsHz702tjVbyALw/mUnop2G
mL3tVgQABDVGAP+YSP84/isoLgoQK4anP80oqxQwZKZ+CNf/j6yQUPJJIECuz6V+zKIMdn9zOsVz
X0cXl8Rp2pEksB9kOcOe7ACkBQFydfSr4O0kfhhfoHtVmMkYBVsvIcqJKEKw2/czsZa2CHWW5VEZ
IiWRX/HpP+G6mGQBe7aDtSq/MDgi2IUd2ERoBOlRD4OXxYPG+0PGmHRuBTdQR9Hnr9TNFKZkeNov
d+X6tb/di4eaD+uyUyLD4n12gKB/J2JXA/XIt65C71RKtAnbOyJGh+gNgHkhaLjklGyZu+z28nG3
IJR6E507+tBQv/ee3r/yyLeWPuFYfpnGEcURd8FAKNmVJDou3DflUnVUlqTnMWJ3D9S2xgBZgmRH
BlJkGwMehGyCCQLgcGa63/rOt1Do21Jejj9DrHwSCeonjf7BcDzWTAxckV/hZUjDYhtxkBXQHHw9
JL/GaiGIFrHaSv4mIBg47s+GEpC92U+3b3vG7WttTx2ZFZC83+5+3DplArwk3VVkEhgYRKeZoOBZ
BWzUYm+tGwqRTSdj0X3sH97CKwvvQ9/EFYw3FePWchtv1zo2Q4cOYnnk9ZT+0OZPybjP9OItN8tu
XoV8gzUphxrBIbilMDKwTBNSKhrxtpAEpRNENRpEvpqVabUExqa8OH3YqXycF17/nZzdj3uZomzz
MrHPnb6/VC8T74al5qBZddDZedQquEBLE+oFdEacgGxt9JrGYe8e0bDCxnRPJsFUA9DgNy020VrO
hx+AKu8fzYHZnnndz538cWjVgtZSEEobRTwTLy+nAmD4qiwYlEOcXEC/6x1hhOk9M3nw7z1+Z3RE
MF4/Jy3MHj+vTFEUzflkH0WjCey/Dhd99rvjgqjTOzm6/ft1SIX1bxkwlsoEQmXcTlEW+V5Jw99E
jUgaY8QLTNnqOxrmEw9LZCYh4aZaHRjxkTDvcuuJAHaAr1ZJHgekqBtb2En8hW2ieXFDHj/BwB4Q
h3h/TpH6nLqKJwp7mpFYbbWyDojS5RF+EP9RVx8W/+wCmNyDSNuFDENNUYyV2/qh9HV+e6BDQvX8
2ajSTZLSgmRwE0aYJAYuiClZn2HLHwQqL93bhM6FOzH+6bsZGRIpAZ/wrfumru/FwvNgosSV4NJu
VPi6VDviW87hOT4juBk1PHsthn94h0ZbzHZUICd5ktOw6M9bBqatPVauP16BEW/Foukc9qqCk2QT
+jAIIrnxH3Q/pgMkGcbg+3GCH6KuxAmLx316ZMWNXREZLoWo5jnKjBYQeW6mqi1zZ0LRXpyDFpJd
d3wYlDbBA8ml3/CQD6RAhP0KoHWV+Lb3IldcQbsbbywC/fOhtqnKuYLhf/S+r+owKCYyThYkWQCK
aiYEOZbOqvxa2ERmwVXCDQ7Dmtfws0XQi3ATUjhqcOw4zJiVEVoHTJJCBMWhSYB9qbePR2fMPQaN
g08nzl1y/WjmzDr8uXY9GGhpMfXAilvZOHg+q/IVeKH4gFL7U9LwGSfcaheMvUGwVJILFiruOciU
t9gkC5bOvXIuOJzYM1LKa9tCRhLoOjFUO+Y5Jxm95Xv5Lx2RMskd8m0/24solSDGTIDEft0N2vXj
ibVKsZk36dcIAeups3ZxREzvslaQ3gdCNtXp0FVUhnaxUSLkOA/fhHumkHcSfzkPiWDXlUKcVKwk
l0L8tl8Ok5zF/8g/WvxWlmUFhE3q3jKst7osJXYvGpxjEeu0fseGzsMyRjZpeRxRksKQTuBL6OHx
IlAcsJuKQ5VZmQf2dFktNztt7iuiwNXfkpqSw5SEcRxKcnY9kw9D9C2lKMEn2dcFuzjIfezI8xyQ
bXDkWx/vbyshoavaDc6surjo0i4amtFg/Dds4UZO+fxe26IKrQ7sFlSZ9z6TMqgj59wDpKSQ0rLj
jesweHxTRiHKgMZmzTiHGauRxNHfxhTKSRy2FEqAm6nupOR8S2TXWyzZtgIf3Vm1GdVzNcN1aTUQ
VfPmPFhK8uLubxwvTtDhByGiQFenX/ViUB+kd1RQMerdYqLlQXFupxybKh/8LIf63s0jXC/VGvbi
jY5CvftsCJSDHrafcHhV/mtFp+4VJFST2JSiuMtnAxqF0sk2+On4yBcK3httfT49aLuXhSPJcRAZ
OLby8cK7OxZ4ROE6Xm9YK2C0/R9aoKCVAEyDf4COgyN9+506ZBHFlkXj4cs590aMZpZnD1wt6i9c
7Nh7eSGO3f5Jzs5rKg2SBfGzTZ+kP2sH49Ak4m2R1hYmtU15ZajfXpQ9ntZKXuOHufyayg08kQu2
BGPZ6pm152nqAEZAMwZ9AlZHbhbGzsvgrz2z9p7GgVXGarQPs2jo+Y3bI0MKVqNxHj9/UEQoYXyv
DGlNzO+rFYqPfKwaqJU7AcftLohp7+JPRJw6qUlCX32A9HRKn14djg4u9Wl6q7pcv1rlbqKQsjwV
vL3Vc9aFxhYTrAx838FYkbv2954baSazNAFUOyV14fUHT9REOzMgaDiY8efRyHvyUSFv6LFWQ2Ql
cQSuWz0K1UJAYAZYc5/sfhenjj+8ExX/nk/OqipEPrkJLEdiGtDGkKW/HRHWjA+RX5hKM462x9f5
90Fs9Wzua6brpz3CZHvm694TX5HXdlWKXU7xDLn3zOjKObIQ7eGdZosykOO29fBuibv6L21IqWx5
54YJ3MPc7It7QTWDdXdi8rluVDx7YiL5btS4Eve898S/U22XKQ6GiG9V45YxJwcM0IGg7AsJ0Jsr
C33Shv+/zUuURvYQlMXbGvDC
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
