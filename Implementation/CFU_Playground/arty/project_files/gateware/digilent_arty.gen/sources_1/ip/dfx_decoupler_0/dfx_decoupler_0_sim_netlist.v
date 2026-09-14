// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Fri Nov 28 01:17:42 2025
// Host        : jsp-H370M-D3H running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top dfx_decoupler_0 -prefix
//               dfx_decoupler_0_ dfx_decoupler_0_sim_netlist.v
// Design      : dfx_decoupler_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dfx_decoupler_0,dfx_decoupler_dfx_decoupler_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dfx_decoupler_dfx_decoupler_0,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module dfx_decoupler_0
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
  dfx_decoupler_0_dfx_decoupler_dfx_decoupler_0 U0
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
module dfx_decoupler_0_xpm_cdc_single
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 32752)
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
