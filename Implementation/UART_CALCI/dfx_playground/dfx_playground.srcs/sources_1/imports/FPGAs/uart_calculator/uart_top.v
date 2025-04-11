`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Reference Book: FPGA Prototyping By Verilog Examples Xilinx Spartan-3 Version
// Authored by: Dr. Pong P. Chu
// Published by: Wiley
//
// Adapted for the Basys 3 Artix-7 FPGA by David J. Marion
//
// Top Module for the Complete UART System
//
// Setup for 9600 Baud Rate
//
// For 9600 baud with 100MHz FPGA clock:
// 9600 * 16 = 153,600
// 100 * 10^6 / 153,600 = ~651      (counter limit M)
// log2(651) = 10                   (counter bits N)
//
// For 19,200 baud rate with a 100MHz FPGA clock signal:
// 19,200 * 16 = 307,200
// 100 * 10^6 / 307,200 = ~326      (counter limit M)
// log2(326) = 9                    (counter bits N)
//
// For 115,200 baud with 100MHz FPGA clock:
// 115,200 * 16 = 1,843,200
// 100 * 10^6 / 1,843,200 = ~52     (counter limit M)
// log2(52) = 6                     (counter bits N)
//
// For 1500 baud with 100MHz FPGA clock:
// 1500 * 16 = 24,000
// 100 * 10^6 / 24,000 = ~4,167     (counter limit M)
// log2(4167) = 13                  (counter bits N)
//
// NOTE:
// Use this as the escape sequence to clear screen using UART: `\033[2J\033[H`
// or `0x1B 0x5B 0x32 0x4A 0x1B 0x5B 0x48`
//
// Comments:
// - Many of the variable names have been changed for clarity
//////////////////////////////////////////////////////////////////////////////////

module uart_top #(
    parameter integer DBITS    = 8,    // number of data bits in a word
    integer SB_TICK  = 16,   // number of stop bit / oversampling ticks
    integer BR_LIMIT = 651,  // baud rate generator counter limit
    integer BR_BITS  = 10    // number of baud rate generator counter bits
) (
    input                  clk_100MHz,  // FPGA clock
    input                  reset,       // reset
    input                  read_uart,   // button
    input                  write_uart,  // button
    input                  rx,          // serial data in
    input      [DBITS-1:0] write_data,  // store alu answer in memory
    output                 tx,          // serial data out
    output reg [DBITS-1:0] read_data,   // operand
    output     [DBITS-1:0] stored_data  // operand
);

  // Connection Signals
  wire             tick;  // sample tick from baud rate generator
  wire             rx_done_tick;  // data word received
  wire             tx_done_tick;  // data transmission complete
  wire [DBITS-1:0] tx_out;  // from memory to TX
  wire [DBITS-1:0] rx_data_out, dec;  // from UART receiver to output register and mapper
  reg [DBITS-1:0] memory = 'd0;  // memory from the ALU output

  // Instantiate Modules for UART Core
  baud_rate_generator #(
      .M(BR_LIMIT),
      .N(BR_BITS)
  ) BAUD_RATE_GEN (
      .clk_100MHz(clk_100MHz),
      .reset(reset),
      .tick(tick)
  );

  uart_receiver #(
      .DBITS  (DBITS),
      .SB_TICK(SB_TICK)
  ) UART_RX_UNIT (
      .clk_100MHz(clk_100MHz),
      .reset(reset),
      .rx(rx),
      .sample_tick(tick),
      .data_ready(rx_done_tick),
      .data_out(rx_data_out)
  );

  map u_map (  // mapping ascii values to hex decimal values for calculation
      .dec  (dec),
      .ascii(rx_data_out)
  );

  always @(posedge rx_done_tick, posedge reset) begin  // incoming data
    if (reset) read_data = 0;
    else read_data = dec;
  end

  always @(posedge write_uart, posedge reset) begin  // stored data
    if (reset) memory = 0;
    else memory = write_data;
  end

  assign stored_data = memory;

  unmap u_unmap (  // unmapping to ascii values for output
      .ascii(tx_out),
      .dec  (memory)
  );

  uart_transmitter #(
      .DBITS  (DBITS),
      .SB_TICK(SB_TICK)
  ) UART_TX_UNIT (
      .clk_100MHz(clk_100MHz),
      .reset(reset),
      .tx_start(write_uart),
      .sample_tick(tick),
      .data_in(tx_out),
      .tx_done(tx_done_tick),
      .tx(tx)
  );

endmodule
