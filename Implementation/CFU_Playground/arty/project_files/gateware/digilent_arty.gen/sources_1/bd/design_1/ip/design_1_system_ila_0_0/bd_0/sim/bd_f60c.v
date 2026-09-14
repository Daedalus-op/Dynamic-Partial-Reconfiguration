//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_f60c.bd
//Design : bd_f60c
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_f60c,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_f60c,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=None}" *) (* HW_HANDOFF = "design_1_system_ila_0_0.hwdef" *) 
module bd_f60c
   (SLOT_0_AXI_araddr,
    SLOT_0_AXI_arready,
    SLOT_0_AXI_arvalid,
    SLOT_0_AXI_awaddr,
    SLOT_0_AXI_awready,
    SLOT_0_AXI_awvalid,
    SLOT_0_AXI_bready,
    SLOT_0_AXI_bvalid,
    SLOT_0_AXI_rdata,
    SLOT_0_AXI_rready,
    SLOT_0_AXI_rresp,
    SLOT_0_AXI_rvalid,
    SLOT_0_AXI_wdata,
    SLOT_0_AXI_wready,
    SLOT_0_AXI_wvalid,
    SLOT_1_SPI_io0_i,
    SLOT_1_SPI_io0_o,
    SLOT_1_SPI_io0_t,
    SLOT_1_SPI_io1_i,
    SLOT_1_SPI_io1_o,
    SLOT_1_SPI_io1_t,
    SLOT_1_SPI_io2_i,
    SLOT_1_SPI_io2_o,
    SLOT_1_SPI_io2_t,
    SLOT_1_SPI_io3_i,
    SLOT_1_SPI_io3_o,
    SLOT_1_SPI_io3_t,
    SLOT_1_SPI_sck_i,
    SLOT_1_SPI_sck_o,
    SLOT_1_SPI_sck_t,
    SLOT_1_SPI_ss_i,
    SLOT_1_SPI_ss_o,
    SLOT_1_SPI_ss_t,
    clk,
    probe0,
    resetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_0_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 4, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN /clk_wiz_clk_out1, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 0, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]SLOT_0_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY" *) input SLOT_0_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID" *) input SLOT_0_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR" *) input [31:0]SLOT_0_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY" *) input SLOT_0_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID" *) input SLOT_0_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY" *) input SLOT_0_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID" *) input SLOT_0_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA" *) input [31:0]SLOT_0_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY" *) input SLOT_0_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RRESP" *) input [1:0]SLOT_0_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID" *) input SLOT_0_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA" *) input [31:0]SLOT_0_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY" *) input SLOT_0_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID" *) input SLOT_0_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_1_SPI IO0_I" *) input SLOT_1_SPI_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_1_SPI IO0_O" *) input SLOT_1_SPI_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_1_SPI IO0_T" *) input SLOT_1_SPI_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_1_SPI IO1_I" *) input SLOT_1_SPI_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_1_SPI IO1_O" *) input SLOT_1_SPI_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_1_SPI IO1_T" *) input SLOT_1_SPI_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_1_SPI IO2_I" *) input SLOT_1_SPI_io2_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_1_SPI IO2_O" *) input SLOT_1_SPI_io2_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_1_SPI IO2_T" *) input SLOT_1_SPI_io2_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_1_SPI IO3_I" *) input SLOT_1_SPI_io3_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_1_SPI IO3_O" *) input SLOT_1_SPI_io3_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_1_SPI IO3_T" *) input SLOT_1_SPI_io3_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_1_SPI SCK_I" *) input SLOT_1_SPI_sck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_1_SPI SCK_O" *) input SLOT_1_SPI_sck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_1_SPI SCK_T" *) input SLOT_1_SPI_sck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_1_SPI SS_I" *) input [0:0]SLOT_1_SPI_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_1_SPI SS_O" *) input [0:0]SLOT_1_SPI_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_1_SPI SS_T" *) input SLOT_1_SPI_ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXI, ASSOCIATED_RESET resetn, CLK_DOMAIN /clk_wiz_clk_out1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  input [2:0]probe0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input resetn;

  wire [31:0]Conn_ARADDR;
  wire Conn_ARREADY;
  wire Conn_ARVALID;
  wire [31:0]Conn_AWADDR;
  wire Conn_AWREADY;
  wire Conn_AWVALID;
  wire Conn_BREADY;
  wire Conn_BVALID;
  wire [31:0]Conn_RDATA;
  wire Conn_RREADY;
  wire [1:0]Conn_RRESP;
  wire Conn_RVALID;
  wire [31:0]Conn_WDATA;
  wire Conn_WREADY;
  wire Conn_WVALID;
  wire SLOT_1_SPI_io0_i_1;
  wire SLOT_1_SPI_io0_o_1;
  wire SLOT_1_SPI_io0_t_1;
  wire SLOT_1_SPI_io1_i_1;
  wire SLOT_1_SPI_io1_o_1;
  wire SLOT_1_SPI_io1_t_1;
  wire SLOT_1_SPI_io2_i_1;
  wire SLOT_1_SPI_io2_o_1;
  wire SLOT_1_SPI_io2_t_1;
  wire SLOT_1_SPI_io3_i_1;
  wire SLOT_1_SPI_io3_o_1;
  wire SLOT_1_SPI_io3_t_1;
  wire SLOT_1_SPI_sck_i_1;
  wire SLOT_1_SPI_sck_o_1;
  wire SLOT_1_SPI_sck_t_1;
  wire [0:0]SLOT_1_SPI_ss_i_1;
  wire [0:0]SLOT_1_SPI_ss_o_1;
  wire SLOT_1_SPI_ss_t_1;
  wire clk_1;
  wire [1:0]net_slot_0_axi_ar_cnt;
  wire [1:0]net_slot_0_axi_ar_ctrl;
  wire [31:0]net_slot_0_axi_araddr;
  wire net_slot_0_axi_arready;
  wire net_slot_0_axi_arvalid;
  wire [1:0]net_slot_0_axi_aw_cnt;
  wire [1:0]net_slot_0_axi_aw_ctrl;
  wire [31:0]net_slot_0_axi_awaddr;
  wire net_slot_0_axi_awready;
  wire net_slot_0_axi_awvalid;
  wire [1:0]net_slot_0_axi_b_cnt;
  wire [1:0]net_slot_0_axi_b_ctrl;
  wire net_slot_0_axi_bready;
  wire net_slot_0_axi_bvalid;
  wire [1:0]net_slot_0_axi_r_cnt;
  wire [1:0]net_slot_0_axi_r_ctrl;
  wire [31:0]net_slot_0_axi_rdata;
  wire net_slot_0_axi_rready;
  wire [1:0]net_slot_0_axi_rresp;
  wire net_slot_0_axi_rvalid;
  wire [1:0]net_slot_0_axi_w_ctrl;
  wire [31:0]net_slot_0_axi_wdata;
  wire net_slot_0_axi_wready;
  wire net_slot_0_axi_wvalid;
  wire [2:0]probe0_1;
  wire resetn_1;

  assign Conn_ARADDR = SLOT_0_AXI_araddr[31:0];
  assign Conn_ARREADY = SLOT_0_AXI_arready;
  assign Conn_ARVALID = SLOT_0_AXI_arvalid;
  assign Conn_AWADDR = SLOT_0_AXI_awaddr[31:0];
  assign Conn_AWREADY = SLOT_0_AXI_awready;
  assign Conn_AWVALID = SLOT_0_AXI_awvalid;
  assign Conn_BREADY = SLOT_0_AXI_bready;
  assign Conn_BVALID = SLOT_0_AXI_bvalid;
  assign Conn_RDATA = SLOT_0_AXI_rdata[31:0];
  assign Conn_RREADY = SLOT_0_AXI_rready;
  assign Conn_RRESP = SLOT_0_AXI_rresp[1:0];
  assign Conn_RVALID = SLOT_0_AXI_rvalid;
  assign Conn_WDATA = SLOT_0_AXI_wdata[31:0];
  assign Conn_WREADY = SLOT_0_AXI_wready;
  assign Conn_WVALID = SLOT_0_AXI_wvalid;
  assign SLOT_1_SPI_io0_i_1 = SLOT_1_SPI_io0_i;
  assign SLOT_1_SPI_io0_o_1 = SLOT_1_SPI_io0_o;
  assign SLOT_1_SPI_io0_t_1 = SLOT_1_SPI_io0_t;
  assign SLOT_1_SPI_io1_i_1 = SLOT_1_SPI_io1_i;
  assign SLOT_1_SPI_io1_o_1 = SLOT_1_SPI_io1_o;
  assign SLOT_1_SPI_io1_t_1 = SLOT_1_SPI_io1_t;
  assign SLOT_1_SPI_io2_i_1 = SLOT_1_SPI_io2_i;
  assign SLOT_1_SPI_io2_o_1 = SLOT_1_SPI_io2_o;
  assign SLOT_1_SPI_io2_t_1 = SLOT_1_SPI_io2_t;
  assign SLOT_1_SPI_io3_i_1 = SLOT_1_SPI_io3_i;
  assign SLOT_1_SPI_io3_o_1 = SLOT_1_SPI_io3_o;
  assign SLOT_1_SPI_io3_t_1 = SLOT_1_SPI_io3_t;
  assign SLOT_1_SPI_sck_i_1 = SLOT_1_SPI_sck_i;
  assign SLOT_1_SPI_sck_o_1 = SLOT_1_SPI_sck_o;
  assign SLOT_1_SPI_sck_t_1 = SLOT_1_SPI_sck_t;
  assign SLOT_1_SPI_ss_i_1 = SLOT_1_SPI_ss_i[0];
  assign SLOT_1_SPI_ss_o_1 = SLOT_1_SPI_ss_o[0];
  assign SLOT_1_SPI_ss_t_1 = SLOT_1_SPI_ss_t;
  assign clk_1 = clk;
  assign probe0_1 = probe0[2:0];
  assign resetn_1 = resetn;
  bd_f60c_g_inst_0 g_inst
       (.aclk(clk_1),
        .aresetn(resetn_1),
        .m_slot_0_axi_ar_cnt(net_slot_0_axi_ar_cnt),
        .m_slot_0_axi_araddr(net_slot_0_axi_araddr),
        .m_slot_0_axi_arready(net_slot_0_axi_arready),
        .m_slot_0_axi_arvalid(net_slot_0_axi_arvalid),
        .m_slot_0_axi_aw_cnt(net_slot_0_axi_aw_cnt),
        .m_slot_0_axi_awaddr(net_slot_0_axi_awaddr),
        .m_slot_0_axi_awready(net_slot_0_axi_awready),
        .m_slot_0_axi_awvalid(net_slot_0_axi_awvalid),
        .m_slot_0_axi_b_cnt(net_slot_0_axi_b_cnt),
        .m_slot_0_axi_bready(net_slot_0_axi_bready),
        .m_slot_0_axi_bvalid(net_slot_0_axi_bvalid),
        .m_slot_0_axi_r_cnt(net_slot_0_axi_r_cnt),
        .m_slot_0_axi_rdata(net_slot_0_axi_rdata),
        .m_slot_0_axi_rready(net_slot_0_axi_rready),
        .m_slot_0_axi_rresp(net_slot_0_axi_rresp),
        .m_slot_0_axi_rvalid(net_slot_0_axi_rvalid),
        .m_slot_0_axi_wdata(net_slot_0_axi_wdata),
        .m_slot_0_axi_wready(net_slot_0_axi_wready),
        .m_slot_0_axi_wvalid(net_slot_0_axi_wvalid),
        .slot_0_axi_araddr(Conn_ARADDR),
        .slot_0_axi_arready(Conn_ARREADY),
        .slot_0_axi_arvalid(Conn_ARVALID),
        .slot_0_axi_awaddr(Conn_AWADDR),
        .slot_0_axi_awready(Conn_AWREADY),
        .slot_0_axi_awvalid(Conn_AWVALID),
        .slot_0_axi_bready(Conn_BREADY),
        .slot_0_axi_bvalid(Conn_BVALID),
        .slot_0_axi_rdata(Conn_RDATA),
        .slot_0_axi_rready(Conn_RREADY),
        .slot_0_axi_rresp(Conn_RRESP),
        .slot_0_axi_rvalid(Conn_RVALID),
        .slot_0_axi_wdata(Conn_WDATA),
        .slot_0_axi_wready(Conn_WREADY),
        .slot_0_axi_wvalid(Conn_WVALID));
  bd_f60c_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(probe0_1),
        .probe1(net_slot_0_axi_ar_cnt),
        .probe10(net_slot_0_axi_aw_ctrl),
        .probe11(net_slot_0_axi_w_ctrl),
        .probe12(net_slot_0_axi_b_ctrl),
        .probe13(net_slot_0_axi_ar_ctrl),
        .probe14(net_slot_0_axi_r_ctrl),
        .probe15(SLOT_1_SPI_io0_i_1),
        .probe16(SLOT_1_SPI_io0_o_1),
        .probe17(SLOT_1_SPI_io0_t_1),
        .probe18(SLOT_1_SPI_io1_i_1),
        .probe19(SLOT_1_SPI_io1_o_1),
        .probe2(net_slot_0_axi_araddr),
        .probe20(SLOT_1_SPI_io1_t_1),
        .probe21(SLOT_1_SPI_io2_i_1),
        .probe22(SLOT_1_SPI_io2_o_1),
        .probe23(SLOT_1_SPI_io2_t_1),
        .probe24(SLOT_1_SPI_io3_i_1),
        .probe25(SLOT_1_SPI_io3_o_1),
        .probe26(SLOT_1_SPI_io3_t_1),
        .probe27(SLOT_1_SPI_sck_i_1),
        .probe28(SLOT_1_SPI_sck_o_1),
        .probe29(SLOT_1_SPI_sck_t_1),
        .probe3(net_slot_0_axi_aw_cnt),
        .probe30(SLOT_1_SPI_ss_i_1),
        .probe31(SLOT_1_SPI_ss_o_1),
        .probe32(SLOT_1_SPI_ss_t_1),
        .probe4(net_slot_0_axi_awaddr),
        .probe5(net_slot_0_axi_b_cnt),
        .probe6(net_slot_0_axi_r_cnt),
        .probe7(net_slot_0_axi_rdata),
        .probe8(net_slot_0_axi_rresp),
        .probe9(net_slot_0_axi_wdata));
  bd_f60c_slot_0_ar_0 slot_0_ar
       (.In0(net_slot_0_axi_arvalid),
        .In1(net_slot_0_axi_arready),
        .dout(net_slot_0_axi_ar_ctrl));
  bd_f60c_slot_0_aw_0 slot_0_aw
       (.In0(net_slot_0_axi_awvalid),
        .In1(net_slot_0_axi_awready),
        .dout(net_slot_0_axi_aw_ctrl));
  bd_f60c_slot_0_b_0 slot_0_b
       (.In0(net_slot_0_axi_bvalid),
        .In1(net_slot_0_axi_bready),
        .dout(net_slot_0_axi_b_ctrl));
  bd_f60c_slot_0_r_0 slot_0_r
       (.In0(net_slot_0_axi_rvalid),
        .In1(net_slot_0_axi_rready),
        .dout(net_slot_0_axi_r_ctrl));
  bd_f60c_slot_0_w_0 slot_0_w
       (.In0(net_slot_0_axi_wvalid),
        .In1(net_slot_0_axi_wready),
        .dout(net_slot_0_axi_w_ctrl));
endmodule
