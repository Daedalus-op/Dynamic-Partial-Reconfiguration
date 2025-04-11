`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Reference Book: FPGA Prototyping By Verilog Examples Xilinx Spartan-3 Version
// Authored by: Dr. Pong P. Chu
// Published by: Wiley
//
// Original: Adapted for the Basys 3 Artix-7 FPGA by David J. Marion
// Adapted for the Arty A7-100T FPGA by Pranav Varkey
//
// UART System Verification Circuit
//
// Comments:
// - Many of the variable names have been changed for clarity
//////////////////////////////////////////////////////////////////////////////////

module uart_test (
    input        clk,  // FPGA clock signal
    input        rst,  // btnR
    input        rx,   // Rx
    input        btn,  // btnL (read and write FIFO operation)
    // input  [3:0] op,   // opcode
    input  [7:0] write_data, // data to be written to memory
    output       tx,   // Tx
    output [3:0] LED,   // data byte display
    output [7:0] rec_data, stored_data
);

  // Connection Signals
  wire rx_full, rx_empty, btn_tick;
  reg [7:0] temp = 0;

  // Complete UART Core
  uart_top UART_UNIT (
      .clk_100MHz(clk),
      .reset(rst),
      .read_uart(btn_tick),
      .write_uart(btn_tick),
      .rx(rx),
      .write_data(write_data),
      .read_data(rec_data),
      .stored_data(stored_data),
      .tx(tx)
  );

  // Button Debouncer
  debounce_explicit BUTTON_DEBOUNCER (
      .clk_100MHz(clk),
      .reset(rst),
      .btn(btn),
      // .db_level(),
      .db_tick(btn_tick)
  );

//  calc u_calc (
//      .y  (write_data),
//      .flg(),
//      .op (op),
//      .a  (stored_data),
//      .b  (rec_data)
//  );

  // Output Logic
  assign LED = stored_data[3:0];  // data byte received displayed on LEDs
endmodule
