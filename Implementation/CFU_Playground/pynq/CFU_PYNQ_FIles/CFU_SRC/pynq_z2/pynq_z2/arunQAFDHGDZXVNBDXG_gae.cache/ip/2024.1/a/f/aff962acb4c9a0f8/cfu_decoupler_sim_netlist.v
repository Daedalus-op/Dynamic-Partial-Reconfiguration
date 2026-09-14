// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Wed Nov  5 06:55:35 2025
// Host        : jsp-H370M-D3H running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cfu_decoupler_sim_netlist.v
// Design      : cfu_decoupler
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cfu_decoupler,dfx_decoupler_cfu_decoupler,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dfx_decoupler_cfu_decoupler,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dfx_decoupler_cfu_decoupler U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33296)
`pragma protect data_block
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
KD/akG+SqIg=
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
