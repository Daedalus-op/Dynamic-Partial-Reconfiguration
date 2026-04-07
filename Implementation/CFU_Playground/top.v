module top(
    inout qspi_flash_io0_io,
    inout qspi_flash_io1_io,
    inout qspi_flash_io2_io,
    inout qspi_flash_io3_io,
    inout qspi_flash_sck_io,
    inout qspi_flash_ss_io,

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

    output          ICAP_csib,
    output [31:0]   ICAP_i,
    input  [31:0]   ICAP_o,
    output          ICAP_rdwrb,

    input ck_rst,
    input clk100,
    input pr_switch,
	output wire serial_tx,
	input  wire serial_rx,

	output wire user_led0,
	output wire user_led1,
	output wire user_led2,
	output wire user_led3
);

wire decouple;

system_wrapper system(
    .ck_rst(ck_rst),
    .clk100(clk100),
    .decouple(decouple),
    .pr_switch(pr_switch),

    .ICAP_csib(ICAP_csib),
    .ICAP_i(ICAP_i),
    .ICAP_o(ICAP_o),
    .ICAP_rdwrb(ICAP_rdwrb),
    .qspi_flash_io0_io(qspi_flash_io0_io),
    .qspi_flash_io1_io(qspi_flash_io1_io),
    .qspi_flash_io2_io(qspi_flash_io2_io),
    .qspi_flash_io3_io(qspi_flash_io3_io),
    .qspi_flash_sck_io(qspi_flash_sck_io),
    .qspi_flash_ss_io(qspi_flash_ss_io)
    );


digilent_arty cfu_wrapper (
	.clk100(clk100),
	.cpu_reset(ck_rst),
	.eth_ref_clk(clk100),
	.decouple(decouple),

	.serial_tx(serial_tx),
	.serial_rx(serial_rx),

	.user_led0(user_led0),
	.user_led1(user_led1),
	.user_led2(user_led2),
	.user_led3(user_led3),

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
	.ddram_reset_n(ddram_reset_n)
);
  
endmodule
