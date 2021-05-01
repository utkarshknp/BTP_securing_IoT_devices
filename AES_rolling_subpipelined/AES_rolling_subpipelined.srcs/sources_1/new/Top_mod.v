`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2021 04:13:40 AM
// Design Name: 
// Module Name: Top_mod
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


module Top_mod(input [127:0]datain, input[127:0]key, output [127:0]dataout,input clk, input[5:0]rn);

aes_merged s1(datain,key,dataout,clk,rn[5:2]);

endmodule
