//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
//Date        : Wed Nov 26 19:59:03 2025
//Host        : jsp-H370M-D3H running 64-bit Ubuntu 24.04.3 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=5,da_board_cnt=7,da_clkrst_cnt=5,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (ICAP_csib,
    ICAP_i,
    ICAP_o,
    ICAP_rdwrb,
    clk_100MHz,
    hw_triggers,
    qspi_flash_io0_i,
    qspi_flash_io0_o,
    qspi_flash_io0_t,
    qspi_flash_io1_i,
    qspi_flash_io1_o,
    qspi_flash_io1_t,
    qspi_flash_io2_i,
    qspi_flash_io2_o,
    qspi_flash_io2_t,
    qspi_flash_io3_i,
    qspi_flash_io3_o,
    qspi_flash_io3_t,
    qspi_flash_sck_i,
    qspi_flash_sck_o,
    qspi_flash_sck_t,
    qspi_flash_ss_i,
    qspi_flash_ss_o,
    qspi_flash_ss_t,
    reset_rtl_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:icap:1.0 ICAP csib" *) output ICAP_csib;
  (* X_INTERFACE_INFO = "xilinx.com:interface:icap:1.0 ICAP i" *) output [31:0]ICAP_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:icap:1.0 ICAP o" *) input [31:0]ICAP_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:icap:1.0 ICAP rdwrb" *) output ICAP_rdwrb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN design_1_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_100MHz;
  input [1:0]hw_triggers;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO0_I" *) input qspi_flash_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO0_O" *) output qspi_flash_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO0_T" *) output qspi_flash_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO1_I" *) input qspi_flash_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO1_O" *) output qspi_flash_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO1_T" *) output qspi_flash_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO2_I" *) input qspi_flash_io2_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO2_O" *) output qspi_flash_io2_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO2_T" *) output qspi_flash_io2_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO3_I" *) input qspi_flash_io3_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO3_O" *) output qspi_flash_io3_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO3_T" *) output qspi_flash_io3_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SCK_I" *) input qspi_flash_sck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SCK_O" *) output qspi_flash_sck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SCK_T" *) output qspi_flash_sck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SS_I" *) input qspi_flash_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SS_O" *) output qspi_flash_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SS_T" *) output qspi_flash_ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_rtl_0;

  wire axi_quad_spi_0_SPI_0_IO0_I;
  wire axi_quad_spi_0_SPI_0_IO0_O;
  wire axi_quad_spi_0_SPI_0_IO0_T;
  wire axi_quad_spi_0_SPI_0_IO1_I;
  wire axi_quad_spi_0_SPI_0_IO1_O;
  wire axi_quad_spi_0_SPI_0_IO1_T;
  wire axi_quad_spi_0_SPI_0_IO2_I;
  wire axi_quad_spi_0_SPI_0_IO2_O;
  wire axi_quad_spi_0_SPI_0_IO2_T;
  wire axi_quad_spi_0_SPI_0_IO3_I;
  wire axi_quad_spi_0_SPI_0_IO3_O;
  wire axi_quad_spi_0_SPI_0_IO3_T;
  wire axi_quad_spi_0_SPI_0_SCK_I;
  wire axi_quad_spi_0_SPI_0_SCK_O;
  wire axi_quad_spi_0_SPI_0_SCK_T;
  wire axi_quad_spi_0_SPI_0_SS_I;
  wire [0:0]axi_quad_spi_0_SPI_0_SS_O;
  wire axi_quad_spi_0_SPI_0_SS_T;
  wire clk_100MHz_1;
  wire clk_wiz_clk_out1;
  wire clk_wiz_locked;
  wire dfx_controller_0_ICAP_csib;
  wire [31:0]dfx_controller_0_ICAP_i;
  wire [31:0]dfx_controller_0_ICAP_o;
  wire dfx_controller_0_ICAP_rdwrb;
  wire [31:0]dfx_controller_0_M_AXI_MEM_ARADDR;
  wire [1:0]dfx_controller_0_M_AXI_MEM_ARBURST;
  wire [3:0]dfx_controller_0_M_AXI_MEM_ARCACHE;
  wire [7:0]dfx_controller_0_M_AXI_MEM_ARLEN;
  wire [2:0]dfx_controller_0_M_AXI_MEM_ARPROT;
  wire dfx_controller_0_M_AXI_MEM_ARREADY;
  wire [2:0]dfx_controller_0_M_AXI_MEM_ARSIZE;
  wire dfx_controller_0_M_AXI_MEM_ARVALID;
  wire [31:0]dfx_controller_0_M_AXI_MEM_RDATA;
  wire dfx_controller_0_M_AXI_MEM_RLAST;
  wire dfx_controller_0_M_AXI_MEM_RREADY;
  wire [1:0]dfx_controller_0_M_AXI_MEM_RRESP;
  wire dfx_controller_0_M_AXI_MEM_RVALID;
  wire [31:0]dfx_controller_0_axi_periph_M00_AXI_ARADDR;
  wire dfx_controller_0_axi_periph_M00_AXI_ARREADY;
  wire dfx_controller_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]dfx_controller_0_axi_periph_M00_AXI_RDATA;
  wire dfx_controller_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]dfx_controller_0_axi_periph_M00_AXI_RRESP;
  wire dfx_controller_0_axi_periph_M00_AXI_RVALID;
  wire reset_rtl_0_1;
  wire [0:0]rst_clk_wiz_100M_peripheral_aresetn;
  wire [1:0]vsm_VS_0_hw_triggers_0_1;

  assign ICAP_csib = dfx_controller_0_ICAP_csib;
  assign ICAP_i[31:0] = dfx_controller_0_ICAP_i;
  assign ICAP_rdwrb = dfx_controller_0_ICAP_rdwrb;
  assign axi_quad_spi_0_SPI_0_IO0_I = qspi_flash_io0_i;
  assign axi_quad_spi_0_SPI_0_IO1_I = qspi_flash_io1_i;
  assign axi_quad_spi_0_SPI_0_IO2_I = qspi_flash_io2_i;
  assign axi_quad_spi_0_SPI_0_IO3_I = qspi_flash_io3_i;
  assign axi_quad_spi_0_SPI_0_SCK_I = qspi_flash_sck_i;
  assign axi_quad_spi_0_SPI_0_SS_I = qspi_flash_ss_i;
  assign clk_100MHz_1 = clk_100MHz;
  assign dfx_controller_0_ICAP_o = ICAP_o[31:0];
  assign qspi_flash_io0_o = axi_quad_spi_0_SPI_0_IO0_O;
  assign qspi_flash_io0_t = axi_quad_spi_0_SPI_0_IO0_T;
  assign qspi_flash_io1_o = axi_quad_spi_0_SPI_0_IO1_O;
  assign qspi_flash_io1_t = axi_quad_spi_0_SPI_0_IO1_T;
  assign qspi_flash_io2_o = axi_quad_spi_0_SPI_0_IO2_O;
  assign qspi_flash_io2_t = axi_quad_spi_0_SPI_0_IO2_T;
  assign qspi_flash_io3_o = axi_quad_spi_0_SPI_0_IO3_O;
  assign qspi_flash_io3_t = axi_quad_spi_0_SPI_0_IO3_T;
  assign qspi_flash_sck_o = axi_quad_spi_0_SPI_0_SCK_O;
  assign qspi_flash_sck_t = axi_quad_spi_0_SPI_0_SCK_T;
  assign qspi_flash_ss_o = axi_quad_spi_0_SPI_0_SS_O;
  assign qspi_flash_ss_t = axi_quad_spi_0_SPI_0_SS_T;
  assign reset_rtl_0_1 = reset_rtl_0;
  assign vsm_VS_0_hw_triggers_0_1 = hw_triggers[1:0];
  design_1_axi_quad_spi_0_1 axi_quad_spi_0
       (.ext_spi_clk(clk_wiz_clk_out1),
        .io0_i(axi_quad_spi_0_SPI_0_IO0_I),
        .io0_o(axi_quad_spi_0_SPI_0_IO0_O),
        .io0_t(axi_quad_spi_0_SPI_0_IO0_T),
        .io1_i(axi_quad_spi_0_SPI_0_IO1_I),
        .io1_o(axi_quad_spi_0_SPI_0_IO1_O),
        .io1_t(axi_quad_spi_0_SPI_0_IO1_T),
        .io2_i(axi_quad_spi_0_SPI_0_IO2_I),
        .io2_o(axi_quad_spi_0_SPI_0_IO2_O),
        .io2_t(axi_quad_spi_0_SPI_0_IO2_T),
        .io3_i(axi_quad_spi_0_SPI_0_IO3_I),
        .io3_o(axi_quad_spi_0_SPI_0_IO3_O),
        .io3_t(axi_quad_spi_0_SPI_0_IO3_T),
        .s_axi_aclk(clk_wiz_clk_out1),
        .s_axi_araddr(dfx_controller_0_axi_periph_M00_AXI_ARADDR[6:0]),
        .s_axi_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .s_axi_arready(dfx_controller_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_arvalid(dfx_controller_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bready(1'b0),
        .s_axi_rdata(dfx_controller_0_axi_periph_M00_AXI_RDATA),
        .s_axi_rready(dfx_controller_0_axi_periph_M00_AXI_RREADY),
        .s_axi_rresp(dfx_controller_0_axi_periph_M00_AXI_RRESP),
        .s_axi_rvalid(dfx_controller_0_axi_periph_M00_AXI_RVALID),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid(1'b0),
        .sck_i(axi_quad_spi_0_SPI_0_SCK_I),
        .sck_o(axi_quad_spi_0_SPI_0_SCK_O),
        .sck_t(axi_quad_spi_0_SPI_0_SCK_T),
        .ss_i(axi_quad_spi_0_SPI_0_SS_I),
        .ss_o(axi_quad_spi_0_SPI_0_SS_O),
        .ss_t(axi_quad_spi_0_SPI_0_SS_T));
  design_1_clk_wiz_1 clk_wiz
       (.clk_in1(clk_100MHz_1),
        .clk_out1(clk_wiz_clk_out1),
        .locked(clk_wiz_locked),
        .reset(reset_rtl_0_1));
  design_1_dfx_controller_0_0 dfx_controller_0
       (.clk(clk_wiz_clk_out1),
        .icap_clk(clk_wiz_clk_out1),
        .icap_csib(dfx_controller_0_ICAP_csib),
        .icap_i(dfx_controller_0_ICAP_o),
        .icap_o(dfx_controller_0_ICAP_i),
        .icap_rdwrb(dfx_controller_0_ICAP_rdwrb),
        .icap_reset(rst_clk_wiz_100M_peripheral_aresetn),
        .m_axi_mem_araddr(dfx_controller_0_M_AXI_MEM_ARADDR),
        .m_axi_mem_arburst(dfx_controller_0_M_AXI_MEM_ARBURST),
        .m_axi_mem_arcache(dfx_controller_0_M_AXI_MEM_ARCACHE),
        .m_axi_mem_arlen(dfx_controller_0_M_AXI_MEM_ARLEN),
        .m_axi_mem_arprot(dfx_controller_0_M_AXI_MEM_ARPROT),
        .m_axi_mem_arready(dfx_controller_0_M_AXI_MEM_ARREADY),
        .m_axi_mem_arsize(dfx_controller_0_M_AXI_MEM_ARSIZE),
        .m_axi_mem_arvalid(dfx_controller_0_M_AXI_MEM_ARVALID),
        .m_axi_mem_rdata(dfx_controller_0_M_AXI_MEM_RDATA),
        .m_axi_mem_rlast(dfx_controller_0_M_AXI_MEM_RLAST),
        .m_axi_mem_rready(dfx_controller_0_M_AXI_MEM_RREADY),
        .m_axi_mem_rresp(dfx_controller_0_M_AXI_MEM_RRESP),
        .m_axi_mem_rvalid(dfx_controller_0_M_AXI_MEM_RVALID),
        .reset(rst_clk_wiz_100M_peripheral_aresetn),
        .s_axi_reg_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_reg_arvalid(1'b0),
        .s_axi_reg_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_reg_awvalid(1'b0),
        .s_axi_reg_bready(1'b0),
        .s_axi_reg_rready(1'b0),
        .s_axi_reg_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_reg_wvalid(1'b0),
        .vsm_VS_0_hw_triggers(vsm_VS_0_hw_triggers_0_1),
        .vsm_VS_0_rm_shutdown_ack(1'b1));
  design_1_dfx_controller_0_axi_periph_1 dfx_controller_0_axi_periph
       (.ACLK(clk_wiz_clk_out1),
        .ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .M00_ACLK(clk_wiz_clk_out1),
        .M00_ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .M00_AXI_araddr(dfx_controller_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(dfx_controller_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(dfx_controller_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_rdata(dfx_controller_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(dfx_controller_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(dfx_controller_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(dfx_controller_0_axi_periph_M00_AXI_RVALID),
        .S00_ACLK(clk_wiz_clk_out1),
        .S00_ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .S00_AXI_araddr(dfx_controller_0_M_AXI_MEM_ARADDR),
        .S00_AXI_arburst(dfx_controller_0_M_AXI_MEM_ARBURST),
        .S00_AXI_arcache(dfx_controller_0_M_AXI_MEM_ARCACHE),
        .S00_AXI_arlen(dfx_controller_0_M_AXI_MEM_ARLEN),
        .S00_AXI_arprot(dfx_controller_0_M_AXI_MEM_ARPROT),
        .S00_AXI_arready(dfx_controller_0_M_AXI_MEM_ARREADY),
        .S00_AXI_arsize(dfx_controller_0_M_AXI_MEM_ARSIZE),
        .S00_AXI_arvalid(dfx_controller_0_M_AXI_MEM_ARVALID),
        .S00_AXI_rdata(dfx_controller_0_M_AXI_MEM_RDATA),
        .S00_AXI_rlast(dfx_controller_0_M_AXI_MEM_RLAST),
        .S00_AXI_rready(dfx_controller_0_M_AXI_MEM_RREADY),
        .S00_AXI_rresp(dfx_controller_0_M_AXI_MEM_RRESP),
        .S00_AXI_rvalid(dfx_controller_0_M_AXI_MEM_RVALID));
  design_1_rst_clk_wiz_100M_1 rst_clk_wiz_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_locked),
        .ext_reset_in(reset_rtl_0_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_clk_out1));
endmodule

module design_1_dfx_controller_0_axi_periph_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire dfx_controller_0_axi_periph_ACLK_net;
  wire dfx_controller_0_axi_periph_ARESETN_net;
  wire [31:0]dfx_controller_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]dfx_controller_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]dfx_controller_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [7:0]dfx_controller_0_axi_periph_to_s00_couplers_ARLEN;
  wire [2:0]dfx_controller_0_axi_periph_to_s00_couplers_ARPROT;
  wire dfx_controller_0_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]dfx_controller_0_axi_periph_to_s00_couplers_ARSIZE;
  wire dfx_controller_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]dfx_controller_0_axi_periph_to_s00_couplers_RDATA;
  wire dfx_controller_0_axi_periph_to_s00_couplers_RLAST;
  wire dfx_controller_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]dfx_controller_0_axi_periph_to_s00_couplers_RRESP;
  wire dfx_controller_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_dfx_controller_0_axi_periph_ARADDR;
  wire s00_couplers_to_dfx_controller_0_axi_periph_ARREADY;
  wire s00_couplers_to_dfx_controller_0_axi_periph_ARVALID;
  wire [31:0]s00_couplers_to_dfx_controller_0_axi_periph_RDATA;
  wire s00_couplers_to_dfx_controller_0_axi_periph_RREADY;
  wire [1:0]s00_couplers_to_dfx_controller_0_axi_periph_RRESP;
  wire s00_couplers_to_dfx_controller_0_axi_periph_RVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_dfx_controller_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid = s00_couplers_to_dfx_controller_0_axi_periph_ARVALID;
  assign M00_AXI_rready = s00_couplers_to_dfx_controller_0_axi_periph_RREADY;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = dfx_controller_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_rdata[31:0] = dfx_controller_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = dfx_controller_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = dfx_controller_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = dfx_controller_0_axi_periph_to_s00_couplers_RVALID;
  assign dfx_controller_0_axi_periph_ACLK_net = M00_ACLK;
  assign dfx_controller_0_axi_periph_ARESETN_net = M00_ARESETN;
  assign dfx_controller_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign dfx_controller_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign dfx_controller_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign dfx_controller_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign dfx_controller_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign dfx_controller_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign dfx_controller_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign dfx_controller_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign s00_couplers_to_dfx_controller_0_axi_periph_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_dfx_controller_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_dfx_controller_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_dfx_controller_0_axi_periph_RVALID = M00_AXI_rvalid;
  s00_couplers_imp_GBQNND s00_couplers
       (.M_ACLK(dfx_controller_0_axi_periph_ACLK_net),
        .M_ARESETN(dfx_controller_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_dfx_controller_0_axi_periph_ARADDR),
        .M_AXI_arready(s00_couplers_to_dfx_controller_0_axi_periph_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_dfx_controller_0_axi_periph_ARVALID),
        .M_AXI_rdata(s00_couplers_to_dfx_controller_0_axi_periph_RDATA),
        .M_AXI_rready(s00_couplers_to_dfx_controller_0_axi_periph_RREADY),
        .M_AXI_rresp(s00_couplers_to_dfx_controller_0_axi_periph_RRESP),
        .M_AXI_rvalid(s00_couplers_to_dfx_controller_0_axi_periph_RVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(dfx_controller_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(dfx_controller_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(dfx_controller_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(dfx_controller_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arprot(dfx_controller_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arready(dfx_controller_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(dfx_controller_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(dfx_controller_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_rdata(dfx_controller_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rlast(dfx_controller_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(dfx_controller_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(dfx_controller_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(dfx_controller_0_axi_periph_to_s00_couplers_RVALID));
endmodule

module s00_couplers_imp_GBQNND
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  design_1_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID));
endmodule
