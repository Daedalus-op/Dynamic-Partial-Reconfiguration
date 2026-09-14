// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Wed Nov  5 06:49:02 2025
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

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* SIM_ASSERT_CHK = "0" *) 
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
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
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
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
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qlY4adEXy9kmg3OF1BhzrVGvqcMBKXmpzTFIJsHH7F/NsTMhptcYj1ZoHaGgA7vnKscXYoe47yby
UmDToVKnc3iAXCj/2O6vRkl3fztvC5yiqbFwUs093Po9TrOCZithKg2oTMgwAWKNWt4G2EqAXE2m
koqiWOiV0I4OLCOq/yKP23sUKj7TMIJPDLAswCRO68wsUplepToKlqPEN9hRsTY11ekLF7OCrjOk
4i0VuAzrlKAuOCtsgGXndQgJkJPDq948I7GBePnDFw8kEYudJzs285jdXQb8Cz4xYj4JmQs5p9Nr
OQZoQpOQ54FYfzWQivsHShBrhS/kkACb789Kvw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
bI1q0vmPiHG6Qc8ANyr1UFizZlC38Zuv0Sxfl6iAKHAL0G1BDdaWER+d18zH6tlD9XA2laKrLk38
Id+LmxrX/YAVkubzE+PdKtiZmyRDFY1AJgujTqZSjjXPQ+rdkVHy1i5eQEDGrkMML7/yzjUy7McV
H4wBoP6Vvl1VRm0Aiil2jWDnnT2iJi3/vdHK+G9qS9MPVOlnsHGxPP7wEChIDIwN5XZ08VMBZV8a
NCL+8fu1tmVZrFYgXtgZebG7eTHWQaePZo0hD6SKR91tMQpb8d1klmvv4ups+kVwG14qFnAdZA4u
dElypvYpXZUQo2TKgsDd9f6uZleMJSshAoLC8gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
IlnUfXt+xNvxXjPWYPnCQGW3RpkYCSdGzb/Cp3CpvdNMSiOBTutMxyZRjHWZaQUmJQELuMmvE374
XvpsMeGv6g==

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mExnP3rAO8KUaosmg7+7sD2ebr1fpYYsNu438ZXwsqmsHRm44alK7NYdIs+GDmdHv0K4YWzvC8VL
LyuSS+wllIudxe633ncMBH189T5krnpPRN6oo6BFTx9mWBj805XOtKSNp2Yl7Br+aFa+nB/PXyfW
GoYdSkMcu2b0Ou0aeNPiv/lT6PLew87LEhrJU6SYffsOag/GGVymegLjGbpYh8ByRJsl1gGVujK4
jlETj1f4AnZWcB+zpuvIfHufP2Q1hYiFiG543D4yQi8Q49nsNfxQHQ/LS8mzR0RS1LrZq1JUWy99
ahxpowVnauLqOEAU/F5huItyqgjzTNWy9GArrw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BuY29Y/O0yyAg2R6xDlwiaEZ+/TxA6Zb8AqXijjv15p/+u7BaJZFGKYkaUxIRxmf23QAvoPk5u8W
JQOcUiJLeU79pDXifPhh212/ZyrVuFHLOxVUV4R8sEE6wpVIJ4UobucDU3MoTzi+tuo1bSzCS2nO
0HLfbqFGuHpzzyyc6+QPiargbq1JiQuLNGQDL8D4K02s4Fw3wTF9TkVesX1/cjGjmGilJWcq6mt1
Mcj6d4pWVaoHs4RiafEx7hMnuRkwW6PavC8iNFRJxyuLazlPo5IB8l4asB1O/VOEdPs7TU3z06RK
md2XR99p1210zRKyzubm+It1mhq0eJWTG9kkeA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
fGJsYEL8tx+BTnRRjSt8QWHjqPA3RZfMCf8PU/aH7EejxzmwLnGsszRRS3EzbAgVNkTf+nClbv/x
lO2eoOzB/gcxSFlyXliDDfgrda06AmhXNoptgeS26ZGlJdNseNUkg2KR2cMY5MXJCPq0/WScYte2
yG4AZ0NlDfqnSVJ5zF0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
m/7nrba2UkSiEtUCly6mXb9jxXWtBNP0UWDn0N0bUhg3GUKz0Vu5dB78AkGpJheOjdC6SQJAY3Z1
NcZ18QSj3mS/79SW5NoDUCg3+yJWwCI2sbYIcPSdzTQEyN3FwmLKdpR+Nq/UW2o1rt82lx17K2A3
T8rYeGs8LyWta4oB5c06AMc3qEfXoT0841lJ8ZCeXDzDhF7+Q4ZB1cT8aMfAB8wO+fZpmhnQ5D/o
LNVV35hUo3KmIWYQeui/IrNwDaVD7lsRR8mupqIS6UHDzG4muVqTj3SdYDO/qRrzWJBZ+KLIGNQt
PcrgZq8asl9LwRBGXU1D+tbEzBxqJdM9kaBBhA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fbzHAJoeZFTiqesqMxpj6rWBm299xWKG6oFsbsWeM1kq3Fb4TpbwtgckFl6ZMwqxJG6xXu8hbgQd
9Ly+k7KXdXdpU9KrpBKkMu7408b/90yOfwye2gP4BuU1+C3Z7CDTpkXZyKnHB+v3b/J3PSnNfES/
GC3cJzlX8QVPrA+14zcsSahHlD4WhD8mk00gDMUDAbA7t5gP1A3puSydrxyFizHwQtzpYEm5muUw
/9N3irv1sAeX/5ofBcfxf7oNTQHrANe182cwCuuz+TYyULGa0JhcFAqQBSeFeJUuVCrl8Xiu0dFc
LZ9tCzsopRQu3QRUDugGnuciT/v8l7i37tKHng==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hSdspKQF8k8+SXOwr30e9wYnUpyQGiin0gdtSJcMAEvOC1tK9jEjNThmt7Riho3S0awdd+02GFr/
QBVFZ0cjhqgoBdZ4fWXBqV2fuZbMgBcizatsQgSvAcwdZ1AAR1j1dVoyNsIHIyuqtJRXYBW/Vp/0
Yahd05EiOGQeYBCic04=

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nozGewQKaZhJB5twa+a5Q8c9UaOnqQTWXmBcOb0OdFlOoIx5CAV77uQt+UUqjKW37MsDuY5bKFGh
byuZJkV8lfawcpEWVkmgA1DatFOpD6/QJetRowW4FzrUzUCMbCJkM/B+H6qQInfJFnglVU1a/xZc
1A66qI0ASTJZ7MgjaKHEKU4lrtnNEQsWTuZWB3+5XnTOLDZmJ3Cmou/CHA/vGp3MNYTzho+YI3k4
YMbyBtd9LPLdRXfoxW6CA03ctAUNGymETU3HtxAShjjdMTB6YlZ5JiLEq7fBu9QINHVlZQCNAOQ/
c3mkVzIFlIkfhs78C8G0RrN4QvHtFfFMrIxEDg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33296)
`pragma protect data_block
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
Bf7CuaBx5zA=
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
