`timescale 1ns / 1ps


module Top(clk,keyin,plain,cipherout,plainout);
input clk;
input[127:0] keyin;
input [127:0]plain;
output [127:0]cipherout;
output [127:0]plainout;

aescipher a(clk,plain,keyin,cipherout);
descipher b(clk,cipherout,keyin,plainout);

endmodule
