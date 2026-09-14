// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Thu Nov 27 12:23:07 2025
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
    s_cfu_outputs_cfu_id,
    rp_cfu_outputs_cfu_id,
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
  output [2:0]s_cfu_outputs_cfu_id;
  input [2:0]rp_cfu_outputs_cfu_id;
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
  wire [2:0]rp_cfu_outputs_cfu_id;
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
  wire [2:0]s_cfu_outputs_cfu_id;
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
        .rp_cfu_outputs_cfu_id(rp_cfu_outputs_cfu_id),
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
        .s_cfu_outputs_cfu_id(s_cfu_outputs_cfu_id),
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
NPAYNPmprEteWGTodpvDXlmKMY+pieDeoB0Y1SY66e45urn/y22zzGynb8qsXsQTw4VpwcRbelY3
Pe4LlHROFxm5MJ0HjJ1dWDcKEwh0EQr+12ng3Blx9ebILyHT5fEOxAUgwJpJpn/sftzEpRNJeEVc
6iAY8SqGln3NdDv9d7WA6e/YDUEUsLADFeRTm/3FKHxMIF8uyced8JhZ4sRtueisgk+u275V73dw
MKGE615WHyXg/SZSIT6i7jgxFmN2s2TTkh5iPCSti5RXwPIom98AyVl5A3mj4y83qZhBMwqgNKnt
OgODIn8LsMzF5LMov90VUmqudWMEJX9sTEtS3w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
geVbkiyaAwpaFeDZYcmYdowXpJZhu9a2KMx5j4W9g2y3ObDXZ0nALHMxPqGH5l4I/s0kbWJTzPL8
4Ekr/Dk0W05rzp6i76HxO8MwGs32ugd/IhvGRmDwKJlHoo4NnUfHRVmf7PumlgvZ3YBGN8p1HxJT
1OAXQwEzQfAl7cFbncZnJZgSl0le8INKh/k+Usdf/VG2Sd6wqzWbHMb7mJV921GEVd1142Ytc6dL
tM9L/7M0awDyUIvFS9UlOGVHUJpBvAoAG3JvkslEU8CmUBUKjfmS4COfWxpLvAQYGrSW9CqV1IcD
uxItRK3A2GAfb6wlWCKw9l0qsdzVSXylhEpsqQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
UVPU9GmNqZVpxlJu43Cm1uqMMLkGdUavPE2xmZzHmetdTyGHm5LBrUbMxmEcRCjvkc/Riqx5ACza
pz9jMl54Sg==

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kubrdllQPSFcrxHL++3w2ztISrQdyglXZRVktHEgvGsb2HCq+9D33LLcjvUE9WYH9Ui8F4MViryl
Q5bqb82jGq+MckQfzasX/k74kARF8sSxLtCAMA5qJSp/CZ9Y1dtinAiBrurOs7tOb6TvMCeDbqoI
EsKfC2tUm3xQV5hfGF3qpKrMUEfC5f0jKda393S/SJ+RZnXjLqE6L6XB23s5LwYmqQOv+fJhzsgA
90L30EgcmjCXW7tDYJj5fzdwBXMeLCpQwKnGWNi/zt4hrjZYy4O4KpAl/x9o1aSR3SWsxNVJbXaY
n0VpMEzeY5rsOmW1Q6I0iBoA8e0OecPHJ/KE+A==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iaVxnd8a2tbSwVtfvb24ECGVbP/DW2ZpG129juL14jLaQPF8AhKaZHGoZClUUT4HX1IZTZ6mbFz5
eWGIftIOWNPBEuuIZBLr+DEa6qgZe+qq7KvhI+n5WulBEVIKlYvE44gvHUAE7NlJN0BQjSqI2kpm
HPwf0UA/PfILQqPpBbJzR97rTrBnK1hpIaNMjDjTNZ9Es5HeIrmO7Bb7R/x3NHfD6BCgBjI4XQE0
4hB730SaiKZXFhZjgYVuixaJHmGJAQr96zeMz6xuwL+upkpyFEGhbQjClCoc5ZRflJ1GdwbNPd0D
9yCJNmsquMYmjuhqdG8JsA6vt9F7ZFv7sMCQxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
cE5TPUDaD9Z7i7yuOEaNYPjeRarGiuGmivZ9gMBGutEa6JYs5znmc6FdJKO9G8yyyOgqpmkKBJ3Y
TE6Dr3nX0O1KZ1EH0Rb7JrMvmbbpzBVJg7P52t5m06RX8Y1BR6NsnBblJAkwW7SWb2idDYuroHnC
yONcNZv10Na0HUNPLLM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DH2KwTyEeb1j5TbOC4xLKpQihmk7cHUXNJZQ5vpOwsICD8jUgtGTYfpORrLjrwh0Fh8OIOj6kOSe
3T+8E4k7s9RuJZyOa0r0lF0f80/VahmrJjXvUkh8yyv8snfNCxvRT/4McdVnhAX6nxBcy+Hom2mx
pMrgvb2nvwfv3I3ijJLUtOYHL1vGPaZvKLJLLFm5tnLOurdwAFTqDpQABtexLolTfxTpk3dZv48d
Dkygkaqa67NgYCGpoKJBk+EI4kSMgKSo10Fq+TnsXNIv2Ni9ys06KFLegimbJpbgbBMx6arEjbQp
UCWsLTl+nSRv48gqN82gIQvx+ZPfIwpqAtd1AA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
34utTBr5qmJhc8YclTLXrbnmG319RWC7acC0lgDtn2cW3+5fJPhFNgbe5T88zA/GjmbxWaMcy8A4
cp1Z+tao5WEl2K2Lcg/QoM8uZRuvxgSjIh+o6LNxN3guedCIOjtJ31HHDZIZCWD5KBSxnAn3IKYn
fvMiz1yTT4FKkfChR4SFRSukZVtNyveRDvUPk+6IUJnGJ18p+0cPoGQwGXMQQUtlKvgHJFF8WUlk
elxS8I4llN0HQaR8Z0D5BpxIJWU7fjHzoZ1fYLmdhKruqeyro76zknOjE5fIdhANKQVYgPBxSTDI
LiKwiodVZnIN8VjKkTie8IeFn28fjoQw0hGDrQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
IQEEwIOJQkhaID2PxLS2fnXtcANzsJ/roc97WK5fvjEp4iwSVa0jWgsLGhGZNrB30wXcGXbXbVjK
d5OSzVDRUx8FrtG2GfzOWccxWa7SYYsEYW8Cvwmk+GPjFwrMfKpPvPwtt+kfC6HebHNSNXC1T6c7
Se5621anCkyCnz9eJbs=

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M8x8ZTN3bUw/e7/c/RUDZzQsRmrNhSadDMeCip0OhSs2zxr0krkj/EaAch9XnITJFsF7UOxD3o1G
kSe+Wc4kKQcekEffNwFweR5jFKeSItJXeGCVZXmHbmrxZIZPQL52NAuAYfXGmwxVSBCOUKprgf7e
ZluJ3qaFan8g7bS9gaNvuOhPO6NLGbgJBkuN5dPo2BX6nizftTpSRRnjGqt176Jh2zp7EQqzhR7X
bx8wAbt8g2IGjZ59beMEYLBoqJ1AW2wq7CBpH/l+i2z5iewOBAXDy6xED5wUQNNaX7W2r/kDgolH
7IZY8hehBmYtKsMAQEwJcMggcjuPRwk3cpxUwA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33216)
`pragma protect data_block
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
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
