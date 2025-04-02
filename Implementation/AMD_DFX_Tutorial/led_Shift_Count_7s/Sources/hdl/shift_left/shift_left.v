//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2005-2020 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, Inc.
// All Rights Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor: Xilinx
// \   \   \/    Version: 1.1
//  \   \        Application: Dynamic Function eXchange using GSR
//  /   /        Filename: shift_left.v
// /___/   /\    Date Last Modified: 14 FEB 2020
// \   \  /  \
//  \___\/\___\
// Board:  KC705 Rev B 
// Device: xc7k325t-1-ffg900
// Design Name: module_shift
// Purpose: Dynamic Function eXchange Tutorial
///////////////////////////////////////////////////////////////////////////////
// Reconfigurable Module: module_shift
// Rotate "one off" led
// LED shift left visible on 4 LEDs

module shift (
    en,
    clk,
    data_out
);

  input en;  // Active high reset
  input clk;  // 200MHz input clock
  output reg [3:0] data_out = 4'b0001;  // Output to LEDs
  
  reg [23:0] div_count = 0; // clock divider counter

  always@(posedge clk) div_count = div_count + 23'd1;
  
  always@(posedge div_count[23]) begin
    if ((~en) && (data_out != 0)) data_out = data_out << 1;
    else data_out = 4'b0001;
  end
endmodule
