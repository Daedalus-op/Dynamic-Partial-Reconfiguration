// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Fri Nov 28 01:17:42 2025
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
LgCdg1faymiMGe6q9l0dUY5ueI9pr7KVuyk0IXT68udyWUb3MyeRWS9EMIaX6yABKZ1+bGvLou64
em1pk2k+xPkiKDboauIbalCELoIeaMggFvEaUkjq4ffm6XcFTFRT0wPN3gGMZcai45EAWuQ+vu3s
OflwvMQQIcbnBLFmM7Os+eFStHf1KZU5XOL2A/qmQJeSF2hesrD1QlEtHMzVaFaNIK4nsbon9V/Y
Tm+a4rEHxjU/wtTqxeSviEVcPHvM2RV7mIOe1Y6etombzHZNxPh0HQ4UaQYIFMk9BC8vEBK/WHrk
DG+J0s9MXvW/CqY8Kh8Mt2I4EnvqKNClG39Keg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
E7t38V1GmWnRy4WJc/yGD8joVD/QHhBhwtD7ycklJFES6f5R8PGAif7lNGGdWF3ziSEuVmVqW3WH
vSXwHR5KrUGrBsQ7TvV/INwNewnwgeI92dppYwQ4ZAh9al+LrGBAYVkvEpq9DRK640t9wJAmMouC
O1rOFGIxTJ0uIy10OEzm1YPOhZBofBrH1ubeh9rskktzTusVzhUIHmmUnuxHt1eYQYOgooibAPaE
ipuuMd46mSDuWv6bo6QR9UWzkFOCyMt9KxuGym/9EsNjNz+uq7K82jGPGSs+/VBi7hfKhKitmfol
+AR1rmNjFct/ukTuEZa0ehfzJon8HQCtzz/eDQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
LsYtPVdn3W04FGihkfp5+0nnKc/1DkUCnkgNUGWXq4k08k0NtSxZUyt4WapMWynY1WQVUAct8H8m
98RXVCcxlw==

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RvSheqHyVvB1BFzX14qv1Q8qNVDwxDIkmQMj1p3K1YgowK7RVsJod0APs48a9lR2M2In90APr9zl
XFumfPmBgV8kgIsKXfbdWlw0kDFSm1u8jMMGudUdRvuN9kYZgvFC0nS3Da9gzEx9YAHhlAl5oE/v
eF6RbpKMzacdnMxfA0bFPISgm6KzpTtqCLIDa6FB/v7HPE8lWuRN6SysjMOJVEnMGhASRZgr3Ggr
0TT7ZEP6z8Xf84ec5zKe/c83Di5ZWyaOMLEosv6L9nKp2NW/V5NlJbg/RRMtLXmhdj412eGG3Goz
76f/HqzuW2py7KElVubz2POX46cstbalnkQKkQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bX76T6HKaCChuu+tK+ENm9dUAklZgyV10fpP7HzgUjSUXNry3EA+5vR+OgR9CsdOmpdbP4pxI5hD
QImlzvHLvhSTD2LE8jhan/8B0zaU9jXT4pzHk2jJ4Wn1/B0leyS3M0PuJosiYV1yQme6X1sgv2F/
9RAm9xYlSqNuECExELArnYd/FLFpK6801JP3Eezpe8wubGdMcMiY/hFglhu35XVRDib40EP/pLm1
y0srNEU5Pklr58oGFLOaAoFd7iXMfgjpXpIrPO3zhsVE0zvAjNp6E9jphLHOXtKLT4vvEpaVrDtP
4G6ZSWtkfMfJbu+QvllVaaMyqDfsx/B2DHpVgw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
iDEMEvkwkK66Rqn5+aaT8VCsPgRYxYS0vqllFaxXbfJeV2d72i//zz6WD6TTJEF8V111G2MuOCvj
iSd48ArVGf/9vH3PDjO29pNevupg4bTQR2Ptm3PtgfCVk0bNT39gZnY1LcOJdteybpFS6UAeoPWq
J3gv7XRAcgRf7dKdVII=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IpJ2sz0ol6gwdE9JWAxjo21F9vNUiXlq0GcAcmkRZ0AiDblv8vFzWMjHwu2OoAy/pmk/vSssJmUq
bA2vD1DAl7eQtIfTOcKZsBLi7SF0bdaqY4kbcVCTpn2eEThbYxua/WjsJNR/GYgNjoEhrmmkdRU1
DptGpUD3cKxW/8KQaj1b4oGBIHDT9sPEXuJZskDzTjPxqyyvgmfc864VFhXGDFCf/9RRZYMup1Sl
BWf6pHx0gnW8bi03jVZVAONy0hxmX3YihgS994JyFpRw++7yq19DbzCm1smqr3ULFCKzMj0BklDR
534W/7KR6uruTiUecafF1B02NKjIilIC9THjwg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
n5/PX8nIRVLFfFUuDX4uzCq4ThKqyQs7AnnhPVMnW3Ful5/XN51Ru34T1M0wQt7K6ZvTxojKQ+F8
p5o7vUDaZ899HtihntKvtqLqvfh7PXFPrhEd7nNS9YTcwPPVyX0xnyCt9by8WjWxOgQ5NzUIvMCY
rP+doZ3e75TUhmkxfLd+kI4g/CXJHt+Ee27YrgoCaPDCNjuLsnFHKaZHKlR58wY8OZBb4sAz1TIu
lVUR3D8R2ePFm9YBnKzBaSzMTZ6byAVwPhw3seNB3f15ZvkgN/FiYrCIRHSXDBz+CaTJLminclP3
BI8edERu+qi7A4UNvxU88dszjLGbg4RqHGfwbQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
fhCPrx5/50RIGxlE5+7CWnDng+cxAZxiCdeJFtuc7dvcoSoVICiaksuQ9haoOZGdlU88wNnzDPJG
dHHOHTaNO6BZXVK4OND/MsulqyAvkCgZDR5K2t75qi9CMdKk0lGp8vDqJUCJ66uQej8M9/dGFOhz
Y0aOsG4BNiwEDc/1pJU=

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LytvAUVKs2QkEbo3X6ugCDEg1JSRph6futfatAnj/RfkG7DI7XRr/0RxELFkI6Z4/kg5HiMCnG2y
4V+vWTucvoF8pGUcZGSRxTRzopUX2YpH4FO59tA83p7bj4oyad38pSa7zQA4+mGsjRIIKMiPGLd/
g5CAJsaFG1CAKLVAk8fNk6q5xDDvzF1NimADW9q6A5CQpXEJPeeQppXnl0ciJHjG961gmgJmSFrq
GjjSruW+HqaRA6ExytX5UENQVwnuv/Xq0avetCvk6+frZVGhYziCS9uUyZeYoHjhPvOnraNN6h51
J6SIPGqbN1iwTG50yrUa1USsPa2u9+d4w5LIqg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 32800)
`pragma protect data_block
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
twLAlZmrTZiRCClUbWWZPnEVKNCViFp/DQ==
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
