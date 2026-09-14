// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Wed Nov 26 21:11:49 2025
// Host        : jsp-H370M-D3H running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dfx_decoupler_0_sim_netlist.v
// Design      : dfx_decoupler_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dfx_decoupler_0,dfx_decoupler_dfx_decoupler_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dfx_decoupler_dfx_decoupler_0,Vivado 2024.1" *) 
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
    s_cfu_outputs_cmd_ready,
    rp_cfu_outputs_cmd_ready,
    s_cfu_outputs_rsp_valid,
    rp_cfu_outputs_rsp_valid,
    s_cfu_outputs_rsp_payload_outputs_0,
    rp_cfu_outputs_rsp_payload_outputs_0,
    decouple,
    decouple_status,
    decouple_ref_clk);
  input [0:0]s_cfu_inputs_cmd_valid;
  output [0:0]rp_cfu_inputs_cmd_valid;
  input [9:0]s_cfu_inputs_cmd_payload_function_id;
  output [9:0]rp_cfu_inputs_cmd_payload_function_id;
  input [31:0]s_cfu_inputs_cmd_payload_inputs_0;
  output [31:0]rp_cfu_inputs_cmd_payload_inputs_0;
  input [31:0]s_cfu_inputs_cmd_payload_inputs_1;
  output [31:0]rp_cfu_inputs_cmd_payload_inputs_1;
  input [0:0]s_cfu_inputs_rsp_ready;
  output [0:0]rp_cfu_inputs_rsp_ready;
  input [0:0]s_cfu_inputs_reset;
  output [0:0]rp_cfu_inputs_reset;
  input [0:0]s_cfu_inputs_clk;
  output [0:0]rp_cfu_inputs_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 cfu_inputs_ref_clk_CLOCK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME cfu_inputs_ref_clk_CLOCK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input cfu_inputs_ref_clk;
  output cfu_inputs_decouple_status;
  output [0:0]s_cfu_outputs_cmd_ready;
  input [0:0]rp_cfu_outputs_cmd_ready;
  output [0:0]s_cfu_outputs_rsp_valid;
  input [0:0]rp_cfu_outputs_rsp_valid;
  output [31:0]s_cfu_outputs_rsp_payload_outputs_0;
  input [31:0]rp_cfu_outputs_rsp_payload_outputs_0;
  input decouple;
  output decouple_status;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 decouple_ref_clk_CLOCK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME decouple_ref_clk_CLOCK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input decouple_ref_clk;

  wire cfu_inputs_decouple_status;
  wire cfu_inputs_ref_clk;
  wire decouple;
  wire decouple_ref_clk;
  wire decouple_status;
  wire [0:0]rp_cfu_inputs_clk;
  wire [9:0]rp_cfu_inputs_cmd_payload_function_id;
  wire [31:0]rp_cfu_inputs_cmd_payload_inputs_0;
  wire [31:0]rp_cfu_inputs_cmd_payload_inputs_1;
  wire [0:0]rp_cfu_inputs_cmd_valid;
  wire [0:0]rp_cfu_inputs_reset;
  wire [0:0]rp_cfu_inputs_rsp_ready;
  wire [0:0]rp_cfu_outputs_cmd_ready;
  wire [31:0]rp_cfu_outputs_rsp_payload_outputs_0;
  wire [0:0]rp_cfu_outputs_rsp_valid;
  wire [0:0]s_cfu_inputs_clk;
  wire [9:0]s_cfu_inputs_cmd_payload_function_id;
  wire [31:0]s_cfu_inputs_cmd_payload_inputs_0;
  wire [31:0]s_cfu_inputs_cmd_payload_inputs_1;
  wire [0:0]s_cfu_inputs_cmd_valid;
  wire [0:0]s_cfu_inputs_reset;
  wire [0:0]s_cfu_inputs_rsp_ready;
  wire [0:0]s_cfu_outputs_cmd_ready;
  wire [31:0]s_cfu_outputs_rsp_payload_outputs_0;
  wire [0:0]s_cfu_outputs_rsp_valid;

  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dfx_decoupler_dfx_decoupler_0 U0
       (.cfu_inputs_decouple_status(cfu_inputs_decouple_status),
        .cfu_inputs_ref_clk(cfu_inputs_ref_clk),
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
        .rp_cfu_outputs_cmd_ready(rp_cfu_outputs_cmd_ready),
        .rp_cfu_outputs_rsp_payload_outputs_0(rp_cfu_outputs_rsp_payload_outputs_0),
        .rp_cfu_outputs_rsp_valid(rp_cfu_outputs_rsp_valid),
        .s_cfu_inputs_clk(s_cfu_inputs_clk),
        .s_cfu_inputs_cmd_payload_function_id(s_cfu_inputs_cmd_payload_function_id),
        .s_cfu_inputs_cmd_payload_inputs_0(s_cfu_inputs_cmd_payload_inputs_0),
        .s_cfu_inputs_cmd_payload_inputs_1(s_cfu_inputs_cmd_payload_inputs_1),
        .s_cfu_inputs_cmd_valid(s_cfu_inputs_cmd_valid),
        .s_cfu_inputs_reset(s_cfu_inputs_reset),
        .s_cfu_inputs_rsp_ready(s_cfu_inputs_rsp_ready),
        .s_cfu_outputs_cmd_ready(s_cfu_outputs_cmd_ready),
        .s_cfu_outputs_rsp_payload_outputs_0(s_cfu_outputs_rsp_payload_outputs_0),
        .s_cfu_outputs_rsp_valid(s_cfu_outputs_rsp_valid));
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
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
t7p3XqPaN7Aqjzm2bw8SuK5iYhLf9Ddxe22a3DxqanXRK8CreoSKrMm1GVXDCeG+Tf56/BQlRxfO
HEEPEZRzatQTXLyfrwmXcReSs+6XpDsyzmki2thGWNIRYaY/wh0M0YQxog+/IRFzbo4lSPCfcUze
wnxZsU+gm6tQKREr0tYMfluLcOd4qzOof4m4xqFj6RlBExuTOZLl7AY6qkSiiAXK7OUakRHnIaV9
sedxhznVaPwA04CO8jwkXpBDel8rnYigSYhlmwiMAHywPp8vWCcggnz9CDBC+TDbPCff9KyRmBp1
GqZkPik8GOGQwrxlfsUhEL10Nxlcy3LNQ73NNw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
CebLPujzR2hOikH/9YXpWM80/QCp2JuZE54FZAnJo3vyMauyzd3TZqJssWPodIhqWdJr/lcwsJo7
QejDjuk3m5O/Z0uukcVT7oO55b6LJniv+VeTuufhJPCC8TCTX8WgcAWvEZIIiDmQZuoa5CBtaOdm
WLdnvf09q3+uWh46daMZzYUd6o6oJ6/1VKDDIHHQLRE/XNCBY69HTWPaPVHNujqyiQhJGVTA0dYz
M8ffnCUVno8Ug1OS82eufdPCiq8+MmTCBBgxWbkHrTHLmcvCibPAhqw3Uo8Ka67J6ilGyF4Z5aLI
vvyJ5Xl9IZoN4rWrIY45iT7nYse+lr27cv/apgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QS8npXxHqhvkloxijrkpXEDL92qVb8Q6t+QiqxYYvxhFviKD6pgqwNcQl97ZREvoLhxV+0ImYoM+
LzYI90jyBg==

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NHCEuZaMwANDbHPb8WhXvuXsAwwYK4Y2aod3NnZEhlOxXOe3jkQvOLB6GjyvNXCl05mGDwzfq/wG
NNlE1/1/URBofKuw2YEXy7EYuu+QJ8vEgbDECq56rx79pdovCZGbF4P/AmQXpU3BYv+jPN6P6qr6
eY7qnGPobcafpHLWPRs5+ClLUXM3w4bqsD1HUK9zJN8DAxxZVvlle/cdp6fR5qEo/0mXuBW6u8JT
ezQeTjfWd0u0sMDIrJm9eZ1iDW8CxRAqESv4u6eA8Id66HXWUQD1HZQh0ZtRsv5i/gIyUfrgTHBv
KehxFKaVrvbWL47PSp6niJnEVl9by/t0x1iUUw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EinPVQQdS1farM7EBNNeDfDFB6A3TO4mWEsiQYxjm456lYhXsgwW6xBs2kjw2fKlKs2HJ1xkHXG4
ROtO61Sw3DxQiaDNvWYbmZ2CwsrX6ikTqi3VjTn1W9EJpH1DZO6FqB65zhQcKO7150xxq85LCDsq
ngg746sZ5nhmqwfgAjriLP3NvCVktNLF/cOULqTzL1uyQ+ovMmA8YaLb7WTGd9Av34UZ0VaqfUIj
6wFL7oZ9GRv1KvKwcFzsyCj+qam/DdsedpGU8Qk1DPshangNBmmAzZB0cr3ip7/AN5bQv5cOZ9o2
goA3D2xtOQRSpDsJcHKDBSWnDjZA+CpIvBFGNg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
pQ6tUrfooMwDmjJ8SX2yc8ybeDBQB9JDNQSosT3mS0JxK12JYRPXwrOM6NHCByzoCfYirHUxdB+i
2dXZD3F9N4gTuKkAdsQwROra/Ka4jdVrd7KpbUOb8d9EtSaLGs6aJ1bnRNbvAwPCbd7VX8+LF9k9
UC2z7E47aSRettzv+ik=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DmZYVMA4bB/2Bvg6yaIY52emwr8vnz/FlzfEOy+UPQAvMylHdhafAUUaOmFjlGef0YI6470EImHZ
Z8brOPMPj6mbIVQA5dVs4suyWmCIqB7ZZUIouH+tHSnZONq3fxedAIHo+Jqn/VlPoJSYY0F8LG68
s4TDvMeew8u+GyiQ1pgiPqW39iyKL2FyCdh4mflGv2sOIzSeDR0YkVoTn2FKvdde5ikWVMb3prEw
PLsdI+ar0HJY5c4abRzRTHHL4bWofnnik5p1Xr/kupiB89WfHx+izpl1/3QnddxuumdJ+Mc7/fNn
ebHjN0HLnNgg9W+yYD3tjlO1EljeRNyR3V3fdQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nesPetwWrhxTGX/eY6p7wszFA/eIUPLP4KzCfTfK4SbYAajx3i4Sf5nAda0StA8nVyI9Tf9/N72A
ZcEjOC4KA/KEAD2/Em9RyWH3mAiTKI1vmObpjhV6twrpibo9eO97K+Chwkmp0YiUitEa4M25QO3e
auF2iAXy/znrdlhBTW7x29LM+FvINRdXNEC7IGgxkQhQJTAMNkgYu+s92lzCJSyGJ3oB+CVdoWgD
J2UKm3xvVDZu1A/OfNbrIAr0VMXHEx0FdljdL9fOiuEy2y5zRhUnEw+Nr1KjEX9/PgmPT2WFQ2uY
MdLLpG7lj0JvYaXaO//xlZWWEzHnwuo62NsJwQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Bzxkx4grUm7t5mCJ+8siHcy6BYgpjpaKwZLcF+vhvXsspjLaAC0TYMxiV/Cy+xj5I9lubbuiZ8Vg
s0LWxTG8eYml32kHHRbI6s1m1bsd6V8XEiFygM8QpZhHut8GCEG3T7qWypcrdCtyoMhcYP+2KrZH
n/zDaN0o6yMz8QRwcqo=

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hTD7mafsxn/TCqUZ817Gk5ckttuSQuc5NM9gupFc2+pO2aCsRgTWWbj7AKr1r7NKtIpcX6AzLTTU
w3BE3f+SSYWjgAw9gmp+tMHPymtHt/8IW8OZlZIt3V0stBA/0N4w7jAwl+2lU1s14TtZO1XhJfTJ
PdKteRjyxuxFu81qO8w6chr8s2FEvpjj5G1o05Pvaf/9JLAzbegw9fidrNQny+z265bGAAeTJVoG
Br99L6Ybgeftl0RFLnw5oq8dkM1au+IzfOwqhoZ8zn4bFlowBmfHtPYhRwkw95oHWrG7OMGSutje
34W9a9AuQFkykkhCPbW3t0O2RaV6na5ygrZDvg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 32448)
`pragma protect data_block
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
+NT12yvZwECAuIJXQyX7
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
