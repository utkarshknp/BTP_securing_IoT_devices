`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2020 11:01:40 AM
// Design Name: 
// Module Name: a
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
module mod_a(dataout[7:4],dataout[3:0],gamma1[3:0], gamma0[3:0]);
wire [3:0]del0;
wire [3:0]del1;
input wire [3:0]gamma1;
input wire [3:0]gamma0;
output wire [7:0]dataout;
begin
wire [3:0]w1;
wire [3:0]w2;
wire [3:0]w3;
wire [3:0]w4;
wire [3:0]w5;
assign w1[3:0]= gamma1[3:0] ^ gamma0[3:0] ;
mod_d d1(w2[3:0],gamma1[3:0]);
mod_e e1(w3[3:0],w1[3:0],gamma0[3:0]);
assign w4[3:0] = w2[3:0] ^ w3[3:0];
mod_b b1(w5[3:0],w4[3:0]);
mod_e e2(del1[3:0],gamma1[3:0],w5[3:0]);
mod_e e3(del0[3:0],w1[3:0],w5[3:0]);
mx_mul mx_m1(dataout[7:0],del1[3:0],del0[3:0]);
end
endmodule
