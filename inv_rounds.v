`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2021 12:34:02
// Design Name: 
// Module Name: inv_rounds
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


module inv_rounds(clk,rc,data,keyin,keyout,rndout);
 input clk;
input [3:0]rc;
input [127:0]data;
input [127:0]keyin;
output [127:0]keyout;
output [127:0]rndout;

wire [127:0] sb,sr,mcl;

KeyGeneration t0(rc,keyin,keyout);
inv_subbytes t1(data,sb);
inv_shiftrow t2(sb,sr);
inv_mixcolumn t3(sr,mcl);
assign rndout= keyout^mcl;

 
endmodule
