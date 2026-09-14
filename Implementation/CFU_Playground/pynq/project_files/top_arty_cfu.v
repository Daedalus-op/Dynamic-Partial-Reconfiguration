`timescale 1ns / 1ps

module top_arty_cfu(
	// cfu system IO ports
	input  wire clk100,
	input  wire cpu_reset,
	input  wire cfu_reset,
	input  wire decouple_switch,
	input wire [2:0] hw_trigger_switch,
	output wire eth_ref_clk,
	output wire serial_tx,
	input  wire serial_rx,
	output wire [13:0] ddram_a,
	output wire [2:0] ddram_ba,
	output wire ddram_ras_n,
	output wire ddram_cas_n,
	output wire ddram_we_n,
	output wire ddram_cs_n,
	output wire [1:0] ddram_dm,
	inout  wire [15:0] ddram_dq,
	inout  wire [1:0] ddram_dqs_p,
	inout  wire [1:0] ddram_dqs_n,
	output wire ddram_clk_p,
	output wire ddram_clk_n,
	output wire ddram_cke,
	output wire ddram_odt,
	output wire ddram_reset_n,
	output wire user_led0,
	output wire user_led1,
	output wire user_led2,
	output wire user_led3,

	// flash IO ports
	inout qspi_flash_io0_io,
	inout qspi_flash_io1_io,
	inout qspi_flash_io2_io,
	inout qspi_flash_io3_io,
	inout qspi_flash_sck_io,
	inout qspi_flash_ss_io
);

wire  		 ICAP_csib;
wire  [31:0] ICAP_i;
wire  [31:0] ICAP_o;
wire  		 ICAP_rdwrb;

wire [6:0] hw_trigger;
wire dfxc_decouple, eos;

digilent_arty arty_system (
	.clk100(clk100),
	.cpu_reset(cpu_reset),
	.cfu_reset(cfu_reset),
	.decouple(~(eos) | decouple_switch | dfxc_decouple), 
	.eth_ref_clk(eth_ref_clk),
	.serial_tx(serial_tx),
	.serial_rx(serial_rx),
	.ddram_a(ddram_a),
	.ddram_ba(ddram_ba),
	.ddram_ras_n(ddram_ras_n),
	.ddram_cas_n(ddram_cas_n),
	.ddram_we_n(ddram_we_n),
	.ddram_cs_n(ddram_cs_n),
	.ddram_dm(ddram_dm),
	.ddram_dq(ddram_dq),
	.ddram_dqs_p(ddram_dqs_p),
	.ddram_dqs_n(ddram_dqs_n),
	.ddram_clk_p(ddram_clk_p),
	.ddram_clk_n(ddram_clk_n),
	.ddram_cke(ddram_cke),
	.ddram_odt(ddram_odt),
	.ddram_reset_n(ddram_reset_n),
	.user_led0(user_led0),
	.user_led1(user_led1),
	.user_led2(user_led2),
	.user_led3(user_led3),
	.hw_trigger(hw_trigger)
);
wire clk_dfxc;
design_1_wrapper control_system (
    .rm_decouple(dfxc_decouple),
    .hw_triggers(hw_trigger[2:0] | hw_trigger_switch),
    .ICAP_csib(ICAP_csib),
    .ICAP_i(ICAP_i),
    .ICAP_o(ICAP_o),
    .ICAP_rdwrb(ICAP_rdwrb),
    .clk_100MHz(clk100),
    .clk_dfxc(clk_dfxc),
    .qspi_flash_io0_io(qspi_flash_io0_io),
    .qspi_flash_io1_io(qspi_flash_io1_io),
    .qspi_flash_io2_io(qspi_flash_io2_io),
    .qspi_flash_io3_io(qspi_flash_io3_io),
    .qspi_flash_sck_io(qspi_flash_sck_io),
    .qspi_flash_ss_io(qspi_flash_ss_io),
    .reset_rtl_0(cfu_reset)
);

ICAPE2 #(
   /* .DEVICE_ID(32'h3651093),     // Specifies the pre-programmed Device ID value to be used for simulation */
   /*                             // purposes. */
   /* .ICAP_WIDTH("X32"),         // Specifies the input and output data width. */
   /* .SIM_CFG_FILE_NAME("NONE")  // Specifies the Raw Bitstream (RBT) file to be parsed by the simulation */
)
ICAPE2_inst (
   .O(ICAP_o),    // 32-bit output: Configuration data output bus
   .CLK(clk_dfxc),     // 1-bit input: Clock Input
   .CSIB(ICAP_csib),   // 1-bit input: Active-Low ICAP Enable
   .I(ICAP_i),         // 32-bit input: Configuration data input bus
   .RDWRB(ICAP_rdwrb)  // 1-bit input: Read/Write Select input
);
 
wire [31:0] counter;

perf_counter perf(
  .clk(clk100),
  .reset(cfu_reset),
  .trigger(decouple_switch | dfxc_decouple),
  .eos(eos),
  .counter(counter)
);

ila_0 top_ila(
    .clk(clk100), 
    .probe0(counter),
    .probe1(ICAP_o),
    .probe2(dfxc_decouple) 
);
endmodule
