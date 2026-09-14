`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2025 12:37:45 AM
// Design Name: 
// Module Name: Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Top(
	// pynq system ports
		inout [14:0]DDR_addr,
		inout [2:0]DDR_ba,
		inout DDR_cas_n,
		inout DDR_ck_n,
		inout DDR_ck_p,
		inout DDR_cke,
		inout DDR_cs_n,
		inout [3:0]DDR_dm,
		inout [31:0]DDR_dq,
		inout [3:0]DDR_dqs_n,
		inout [3:0]DDR_dqs_p,
		inout DDR_odt,
		inout DDR_ras_n,
		inout DDR_reset_n,
		inout DDR_we_n,
		inout FIXED_IO_ddr_vrn,
		inout FIXED_IO_ddr_vrp,
		inout [53:0]FIXED_IO_mio,
		inout FIXED_IO_ps_clk,
		inout FIXED_IO_ps_porb,
		inout FIXED_IO_ps_srstb,

	// cfu system ports
		output usb_uart_tx,
		input  usb_uart_rx,
		output user_led0,
		output user_led1,
		output user_led2,
		output user_led3,
		
    // PL clk
        input pl_clk
);


wire 		clk125;
wire 		to_reconfig;
wire [2:0]  configure_to;
wire 		decouple_status;
wire 		decouple;
wire [31:0] perf_count;
wire        perf_rst;

tul_pynq_z2 cfu_system (
	.usb_uart_tx(usb_uart_tx),
	.usb_uart_rx(usb_uart_rx),
	.user_led0(user_led0),
	.user_led1(user_led1),
	.user_led2(user_led2),
	.user_led3(user_led3),

	.clk125(clk125),
	.to_reconfig(to_reconfig),
	.configure_to(configure_to),
	.decouple_status(decouple_status),
	.decouple(decouple)
);

system_wrapper system_unit (
	.DDR_addr(DDR_addr),
    .DDR_ba(DDR_ba),
    .DDR_cas_n(DDR_cas_n),
    .DDR_ck_n(DDR_ck_n),
    .DDR_ck_p(DDR_ck_p),
    .DDR_cke(DDR_cke),
    .DDR_cs_n(DDR_cs_n),
    .DDR_dm(DDR_dm),
    .DDR_dq(DDR_dq),
    .DDR_dqs_n(DDR_dqs_n),
    .DDR_dqs_p(DDR_dqs_p),
    .DDR_odt(DDR_odt),
    .DDR_ras_n(DDR_ras_n),
    .DDR_reset_n(DDR_reset_n),
    .DDR_we_n(DDR_we_n),
    .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
    .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
    .FIXED_IO_mio(FIXED_IO_mio),
    .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
    .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
    .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
    
    .perf_count(perf_count),
    .perf_rst(perf_rst),

    .clk125(clk125),
    .to_reconfig(to_reconfig),
    .configure_to(configure_to),
    .decouple_status(decouple_status),
    .decouple(decouple)
);

reconf_counter perf_unit(
  .clk(pl_clk),
  .rst(perf_rst),
  .count_out(perf_count)
);

ila ila(.clk(pl_clk),.probe0(perf_count));

endmodule
