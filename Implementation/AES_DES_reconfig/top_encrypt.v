`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/16/2025 08:03:50 PM
// Design Name: 
// Module Name: top_encrypt
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


module top_encrypt(
    output [127:0] cipher,
    input [127:0] plain,
    input [127:0] key,
    input clk    
    );
    
  des_wrapper enc_dut(cipher, plain, key, clk);
  
endmodule