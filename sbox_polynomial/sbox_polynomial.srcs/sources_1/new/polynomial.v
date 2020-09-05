`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2020 10:54:29 AM
// Design Name: 
// Module Name: polynomial
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
module mul_x_inv(output wire [7:0]dataout, input wire [7:0]ind);
//Matrix X inverse
//10100000
//11011110
//10101100
//10101110
//11000110
//10011110
//01010010
//01000011
wire [7:0] outd;
assign outd[7]=ind[7] ^ ind[5];
assign outd[6]=ind[7] ^ ind[6] ^ ind[4] ^ ind[3] ^ ind[2] ^ ind[1];
assign outd[5]=ind[7] ^ ind[5] ^ ind[3] ^ ind[2]; 
assign outd[4]=ind[7] ^ ind[5] ^ ind[3] ^ ind[2] ^ ind[1]; 
assign outd[3]=ind[7] ^ ind[6] ^ ind[2] ^ ind[1]; 
assign outd[2]=ind[7] ^ ind[4] ^ ind[3] ^ ind[2] ^ ind[1]; 
assign outd[1]=ind[6] ^ ind[4] ^ ind[1]; 
assign outd[0]=ind[6] ^ ind[1] ^ ind[0]; 
mod_a a1(dataout[7:4],dataout[3:0], outd[7:4],outd[3:0]);

endmodule
