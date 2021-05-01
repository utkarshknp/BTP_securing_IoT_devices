`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2021 03:39:57 AM
// Design Name: 
// Module Name: top_mod
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


module top_mod(input clk,input bool_datain, input [127:0] rnddatainuser,
input [127:0]datain, input [127:0] key,input[5:0] rn, input clk_2f,output [127:0]dataout);

wire [127:0] outrnd;

pseudo_random pr1(clk,bool_datain,rnddatainuser,outrnd);
aes_merged s1(datain,key,dataout,clk,rn[5:2],clk_2f,outrnd);

endmodule
