`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2021 12:59:22
// Design Name: 
// Module Name: inv_subbytes
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


module inv_subbytes(data,sb);



input [127:0] data;
output [127:0]sb;

     inv_sbox q0( .a(data[127:120]),.d(sb[127:120]) );
     inv_sbox q1( .a(data[23:16]),.d(sb[23:16]) );
     inv_sbox q2( .a(data[111:104]),.d(sb[111:104]) );
     inv_sbox q3( .a(data[7:0]),.d(sb[7:0]) );
     
     inv_sbox q4( .a(data[95:88]),.d(sb[95:88]) );
     inv_sbox q5( .a(data[55:48]),.d(sb[55:48]) );
     inv_sbox q6( .a(data[79:72]),.d(sb[79:72]) );
     inv_sbox q7( .a(data[103:96]),.d(sb[103:96]) );
     
     inv_sbox q8( .a(data[63:56]),.d(sb[63:56]) );
     inv_sbox q9( .a(data[87:80]),.d(sb[87:80]) );
     inv_sbox q10(.a(data[47:40]),.d(sb[47:40]) );
     inv_sbox q11(.a(data[7:0]),.d(sb[7:0]) );
     
     inv_sbox q12(.a(data[31:24]),.d(sb[31:24]) );
     inv_sbox q13(.a(data[23:16]),.d(sb[23:16]) );
     inv_sbox q14(.a(data[15:8]),.d(sb[15:8]) );
     inv_sbox q16(.a(data[39:32]),.d(sb[39:32]) );
	  
endmodule

