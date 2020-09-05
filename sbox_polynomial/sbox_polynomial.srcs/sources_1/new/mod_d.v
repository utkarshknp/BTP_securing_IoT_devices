`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2020 11:04:22 AM
// Design Name: 
// Module Name: mod_d
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


module mod_d(output wire [3:0]out, input wire [3:0]in);
begin
wire [1:0] w1;
wire [1:0] w2;
wire [1:0] w3;
mod_i i1(w1[1:0],in[3:2]);
mod_i i2(w2[1:0],in[1:0]);
mod_h h1(out[1:0],w1[1:0]);
mod_g g1(w3[1:0],w2[1:0]);
assign out[3:2]=w1[1:0] ^ w3[1:0];
end
endmodule

