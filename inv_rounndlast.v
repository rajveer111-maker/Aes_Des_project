`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2021 12:53:32
// Design Name: 
// Module Name: inv_rounndlast
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


module inv_rounndlast(clk,rc,rin,keylastin,cipherout);

input clk;
input [3:0]rc;
input [127:0]rin;
input [127:0]keylastin;
output [127:0]cipherout;

wire [127:0] sb,sr,keyout;

KeyGeneration t0(rc,keylastin,keyout);

inv_shiftrow t1(rin,sr);
inv_subbytes t2(sr,sb);
assign cipherout= keyout^sb;
endmodule
