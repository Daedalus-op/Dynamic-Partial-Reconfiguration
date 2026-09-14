// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Wed Nov  5 06:55:35 2025
// Host        : jsp-H370M-D3H running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top cfu_decoupler -prefix
//               cfu_decoupler_ cfu_decoupler_sim_netlist.v
// Design      : cfu_decoupler
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cfu_decoupler,dfx_decoupler_cfu_decoupler,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dfx_decoupler_cfu_decoupler,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module cfu_decoupler
   (s_cfu_inputs_cmd_valid,
    rp_cfu_inputs_cmd_valid,
    s_cfu_inputs_cmd_payload_function_id,
    rp_cfu_inputs_cmd_payload_function_id,
    s_cfu_inputs_cmd_payload_inputs_0,
    rp_cfu_inputs_cmd_payload_inputs_0,
    s_cfu_inputs_cmd_payload_inputs_1,
    rp_cfu_inputs_cmd_payload_inputs_1,
    s_cfu_inputs_rsp_ready,
    rp_cfu_inputs_rsp_ready,
    s_cfu_inputs_reset,
    rp_cfu_inputs_reset,
    s_cfu_inputs_clk,
    rp_cfu_inputs_clk,
    cfu_inputs_ref_clk,
    cfu_inputs_decouple_status,
    s_cfu_output_cmd_ready,
    rp_cfu_output_cmd_ready,
    s_cfu_output_rsp_valid,
    rp_cfu_output_rsp_valid,
    s_cfu_output_rsp_payload_outputs_0,
    rp_cfu_output_rsp_payload_outputs_0,
    s_cfu_output_cfu_id,
    rp_cfu_output_cfu_id,
    cfu_output_ref_clk,
    cfu_output_decouple_status,
    decouple,
    decouple_status,
    decouple_ref_clk);
  input [0:0]s_cfu_inputs_cmd_valid;
  output [0:0]rp_cfu_inputs_cmd_valid;
  input [0:0]s_cfu_inputs_cmd_payload_function_id;
  output [0:0]rp_cfu_inputs_cmd_payload_function_id;
  input [9:0]s_cfu_inputs_cmd_payload_inputs_0;
  output [9:0]rp_cfu_inputs_cmd_payload_inputs_0;
  input [31:0]s_cfu_inputs_cmd_payload_inputs_1;
  output [31:0]rp_cfu_inputs_cmd_payload_inputs_1;
  input [31:0]s_cfu_inputs_rsp_ready;
  output [31:0]rp_cfu_inputs_rsp_ready;
  input [0:0]s_cfu_inputs_reset;
  output [0:0]rp_cfu_inputs_reset;
  input [0:0]s_cfu_inputs_clk;
  output [0:0]rp_cfu_inputs_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 cfu_inputs_ref_clk_CLOCK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME cfu_inputs_ref_clk_CLOCK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input cfu_inputs_ref_clk;
  output cfu_inputs_decouple_status;
  output [0:0]s_cfu_output_cmd_ready;
  input [0:0]rp_cfu_output_cmd_ready;
  output [0:0]s_cfu_output_rsp_valid;
  input [0:0]rp_cfu_output_rsp_valid;
  output [31:0]s_cfu_output_rsp_payload_outputs_0;
  input [31:0]rp_cfu_output_rsp_payload_outputs_0;
  output [2:0]s_cfu_output_cfu_id;
  input [2:0]rp_cfu_output_cfu_id;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 cfu_output_ref_clk_CLOCK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME cfu_output_ref_clk_CLOCK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input cfu_output_ref_clk;
  output cfu_output_decouple_status;
  input decouple;
  output decouple_status;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 decouple_ref_clk_CLOCK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME decouple_ref_clk_CLOCK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input decouple_ref_clk;

  wire cfu_inputs_decouple_status;
  wire cfu_inputs_ref_clk;
  wire cfu_output_decouple_status;
  wire cfu_output_ref_clk;
  wire decouple;
  wire decouple_ref_clk;
  wire decouple_status;
  wire [0:0]rp_cfu_inputs_clk;
  wire [0:0]rp_cfu_inputs_cmd_payload_function_id;
  wire [9:0]rp_cfu_inputs_cmd_payload_inputs_0;
  wire [31:0]rp_cfu_inputs_cmd_payload_inputs_1;
  wire [0:0]rp_cfu_inputs_cmd_valid;
  wire [0:0]rp_cfu_inputs_reset;
  wire [31:0]rp_cfu_inputs_rsp_ready;
  wire [2:0]rp_cfu_output_cfu_id;
  wire [0:0]rp_cfu_output_cmd_ready;
  wire [31:0]rp_cfu_output_rsp_payload_outputs_0;
  wire [0:0]rp_cfu_output_rsp_valid;
  wire [0:0]s_cfu_inputs_clk;
  wire [0:0]s_cfu_inputs_cmd_payload_function_id;
  wire [9:0]s_cfu_inputs_cmd_payload_inputs_0;
  wire [31:0]s_cfu_inputs_cmd_payload_inputs_1;
  wire [0:0]s_cfu_inputs_cmd_valid;
  wire [0:0]s_cfu_inputs_reset;
  wire [31:0]s_cfu_inputs_rsp_ready;
  wire [2:0]s_cfu_output_cfu_id;
  wire [0:0]s_cfu_output_cmd_ready;
  wire [31:0]s_cfu_output_rsp_payload_outputs_0;
  wire [0:0]s_cfu_output_rsp_valid;

  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  cfu_decoupler_dfx_decoupler_cfu_decoupler U0
       (.cfu_inputs_decouple_status(cfu_inputs_decouple_status),
        .cfu_inputs_ref_clk(cfu_inputs_ref_clk),
        .cfu_output_decouple_status(cfu_output_decouple_status),
        .cfu_output_ref_clk(cfu_output_ref_clk),
        .decouple(decouple),
        .decouple_ref_clk(decouple_ref_clk),
        .decouple_status(decouple_status),
        .rp_cfu_inputs_clk(rp_cfu_inputs_clk),
        .rp_cfu_inputs_cmd_payload_function_id(rp_cfu_inputs_cmd_payload_function_id),
        .rp_cfu_inputs_cmd_payload_inputs_0(rp_cfu_inputs_cmd_payload_inputs_0),
        .rp_cfu_inputs_cmd_payload_inputs_1(rp_cfu_inputs_cmd_payload_inputs_1),
        .rp_cfu_inputs_cmd_valid(rp_cfu_inputs_cmd_valid),
        .rp_cfu_inputs_reset(rp_cfu_inputs_reset),
        .rp_cfu_inputs_rsp_ready(rp_cfu_inputs_rsp_ready),
        .rp_cfu_output_cfu_id(rp_cfu_output_cfu_id),
        .rp_cfu_output_cmd_ready(rp_cfu_output_cmd_ready),
        .rp_cfu_output_rsp_payload_outputs_0(rp_cfu_output_rsp_payload_outputs_0),
        .rp_cfu_output_rsp_valid(rp_cfu_output_rsp_valid),
        .s_cfu_inputs_clk(s_cfu_inputs_clk),
        .s_cfu_inputs_cmd_payload_function_id(s_cfu_inputs_cmd_payload_function_id),
        .s_cfu_inputs_cmd_payload_inputs_0(s_cfu_inputs_cmd_payload_inputs_0),
        .s_cfu_inputs_cmd_payload_inputs_1(s_cfu_inputs_cmd_payload_inputs_1),
        .s_cfu_inputs_cmd_valid(s_cfu_inputs_cmd_valid),
        .s_cfu_inputs_reset(s_cfu_inputs_reset),
        .s_cfu_inputs_rsp_ready(s_cfu_inputs_rsp_ready),
        .s_cfu_output_cfu_id(s_cfu_output_cfu_id),
        .s_cfu_output_cmd_ready(s_cfu_output_cmd_ready),
        .s_cfu_output_rsp_payload_outputs_0(s_cfu_output_rsp_payload_outputs_0),
        .s_cfu_output_rsp_valid(s_cfu_output_rsp_valid));
endmodule

(* DEST_SYNC_FF = "6" *) (* INIT_SYNC_FF = "1" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module cfu_decoupler_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire [0:0]p_0_in;
  wire src_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [5:0]syncstages_ff;

  assign dest_out = syncstages_ff[5];
  FDRE src_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(p_0_in),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[4]),
        .Q(syncstages_ff[5]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "6" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module cfu_decoupler_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire [0:0]p_0_in;
  wire src_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [5:0]syncstages_ff;

  assign dest_out = syncstages_ff[5];
  FDRE src_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(p_0_in),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[4]),
        .Q(syncstages_ff[5]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lEU38+X9ySunaJHwzMvrVfIHJa2xFxE1z+BAg+k0fzlqjIE6cXQA71+cfazY6ew0mL+d2tBO8odB
AcjkooYD+PysJpT0KxjNtDW73fZw+L2SFdkj/0esSX4YnuaKfG+8du2kt/VYS8i2Eb1aEPN1kxET
EkH8u465h1Nw2M8T34CIk0osHETsVVVZrHjS5CaFRvVSq+YF7USDd/vImAwvTSiq8IulEHF2dYhu
KhnCFMfblAYW9v/Y654kAQtEmTngqsdzTueBtX2xnvvUJuIpdSrfFjs6gsBvWsbxmpWZvg3RM7Ev
vXV/xcnG6k7TethTPRbIVcxljcLRbOpPqF+IXw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
OZgVHxykpwnV2aj6VM1cyo1jbkCVTHesfDPxVEZPjNtOUBTGbk+eWTdArDQNPHj+c0xYj8HU03k/
0xDSDongJzPCfRB3bFfzpbUhQ8SuMytCbab2Qqj04/baC2pPFXNInfp+hwNft9ti81bTgu4WUuRZ
uN2xb0mN9/aoospr1WyZCiNiWFyTxOQFhHTk1Y1Gk28OYh4zcD8L7DDOlGONQAI45BOzLT5FNLBV
azfEY8rIiyrTuMrh2vzBIp68heGqQjybV0FbtNYAKRSgfLMw9smm1kW36QFJ7X4xv4seegTrzIxB
yalQfejZUb7g8eHbgZo66vOuSHypvIG9ye5D6wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
IizmMEEf4zVlsjJ+FkSaGKcFqc1ifi0tJY5oXdhiWXLWyv40rVBLo4da7hNdUgSZAsVoLfZl1BYY
FOuXAaTynw==

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QPC1XVChG7aOw0R9CciOGao0MVdgZCPPXhqpCncY34AxEGFDVouxXVcDarhJd6QGCDlNw8LkdZkH
WzoMBfLYPGqloN8DMAFW7TNiT2cpEsSpx5RJR/rrU7XtkVSkWiUp8UJyFEF0QqHlMPxWVeEWqFdV
025vuMpQXiwpQwFWr13maRzJLUsFJl3FETaLhGq205tAkBTqKAMZxwmUQYxYfpq+EnJ0n5QKzQdb
ids2lUb9O7B3gnqKHc3ALRc4KiT1VNiUaWXRi7mMGjl420EpResKgjbj0GVKpIQOVQA6QyR7jMIC
8wQ+x6RCTAsH9QPEx0n4srhwGYpOxK7Tvdb+Ow==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XrsNFlfoXCyIFwuEZVLvOwXUM7jH32ymlb/na2W1N+6/2bVAU99uBoD3kzdbR3DkPNMWbPOtwYYz
H9N2dizwuskRJ/8I41UOoPx/ra7c8HMkW9aykBr62CS0BuEeSAUJJ6zYBCyiPs+y9xPPl3/N+RvM
sqsxoJY2H5TfNCFoueH4TDxW9rA8z8iiW3irbq4QxgzPAkKDubLzBz7NjHuDzMqtWDfjQ/lRiUuw
17jgaYAbzOOfhuH3/9EKetetuUQPYhRYQarLhnILqD0OkU88Mza4dn9DfJRGyRjRK+0YpQz8lWEZ
a+FqZ3JT2VpR/+1+jFGHVMsemCm5cOsqLNWkYQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
e4Y+uHsLbuVQne/PO7cV8vXGgxKiGSZghNzay/91IEAIc7OPsv3gzogxeWWncYdxug8Xy3gEJscG
msp6VnPp7PLljxVEFECldBtGy+pbCwwU7prFCBcvH7iZM/aEy+36bKyNl7GmUAg3hwlNKuidatFa
RgXQ/0Cp9OpxT0uAT0E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
krfYbs8B4FCjGjQ7jXw3I7yD56G2ZrZX7DRW3mpTzD0YXvfITh61+pG1R1PIDQv8Xsbh1wtKLX7L
lLHo2r7TqmM3WC3IlkkLhIjrZSt6ehTiFpnwhl9Zx1Y8Vb7gvaZUyNmKyw0aBOCOovGnEw8IhREg
MHz4JT0XntKENkf2uPDYv5O6+9FyK0FJD78KUCMZZkwNNp+OlNwJs56s65JriJK3QsnDFJL25NHZ
oi/m638PJayZAwvLy4yDrEktCqoG/220xESVkYN9kX5K+PDTGXvKNAzrY/9X9obk5oADU8ZPRv3a
GHoZ2tRgAzD0Xo0lNTiTcbHVGCPmPbGqUEJdlw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BFWd3XJd2lfnKv+i1BKv8AI96Z7kLKd+ULvYYFGUTb2xIqi1VzZaLQdwvT/MLvGJr6Hdr60awohD
dlx7BZehsx6F/pnfTOo9x92SDOnr3d4O1as01zK9SbiTrZOf7n7BQSSvIWhvoIwOaTE1G7QfCelW
+yWkhtZj0s9MoypZeOia3C8cUJstOCsZV9HK+6t3dNmwntV/3ACKD307F/pe6zNvNu06BOSnLxg9
eR6hcEFqAdAdomOm3qR9R0WMLyKCrNjoq55sKvtWb1oSKaR+NkdCmeXaSXPd/Jw379ZthNga7+Cb
x9rH8NshrasTkWxPdXLTsTiZan4JympT8aAqbA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MHVk0GK4oRQMUoXJknvZ/CkdhPgGd92xZP6asuJ9VA4B6erjuNbIplQPRjmJf9WuurP4vJ/QL3bX
FvNdvdN5Lpr8tl6H3D3fPvCy/VBMKtZ4rzfiv8WJ6VJ8RxF/0Ny1sHG6o9MUawi8KHK9hyvWvBRE
xphhHlZPddfK/f+PaD0=

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Fs7Xu06YbgZZFfe010Mk/v2cn9AzIEguOs7X1gLDjnt46pEgfWD3LyFFX+GADxET7j+2MPces3py
pyRC17sxo7tCsfZDWfYmE06VT9Cm0O17a8H6heJObU+aNR84AxBClkpYFpini12RVCXQPFopKoKW
a1qOrQwe0HCQQkptbI/FBx2LzBpDA7QXgW1V99TkYkiEQux/BLb8Umx6JN/e9vNciEK1WHIC/kBy
Wm0zrQjmp8+uXhs3PJdmeZ+lMeKPH3RFwXyPBVC27u8wBL1Aj762nBzeF4AwP56OE8TVP4nXe/Ms
Qoy9zUSg8V61sHoTHBfrJQnLwwBzj/5OIryGlw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33200)
`pragma protect data_block
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
LmmJ0xGKF4ojpEPjUx/Pxr7/l4hqJHyhL2s=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
