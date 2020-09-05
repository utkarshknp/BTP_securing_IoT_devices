`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2020 11:02:37 AM
// Design Name: 
// Module Name: mod_b
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


module mod_b(output wire [3:0]trian, input wire [3:0]datain);
begin
wire [1:0]w1;
wire [1:0]w2;
wire [1:0]w3;
wire [1:0]w4;
wire [1:0]w5;
assign w1[1:0]= datain[3:2] ^ datain[1:0] ;
mod_i i1(w2[1:0],datain[3:2]);
mod_f f1(w3[1:0],w1[1:0],datain[1:0]);
assign w4[1:0] = w2[1:0]^w3[1:0];
mod_c c1(w5[1:0],w4[1:0]);
mod_f f2(trian[3:2],datain[3:2],w5[1:0]);
mod_f f3(trian[1:0],w1[1:0],w5[1:0]);
end
endmodule
