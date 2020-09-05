`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2020 11:13:50 AM
// Design Name: 
// Module Name: mul_x_inv
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


module mul_x_inv(output wire [7:0]outd, input wire [7:0]ind);
//10100000
//11011110
//10101100
//10101110
//11000110
//10011110
//01010010
//01000011
assign outd[7]=ind[7] ^ ind[5];
assign outd[6]=ind[7] ^ ind[6] ^ ind[4] ^ ind[3] ^ ind[2] ^ ind[1];
assign outd[5]=ind[7] ^ ind[5] ^ ind[3] ^ ind[2]; 
assign outd[4]=ind[7] ^ ind[5] ^ ind[3] ^ ind[2] ^ ind[1]; 
assign outd[3]=ind[7] ^ ind[6] ^ ind[2] ^ ind[1]; 
assign outd[2]=ind[7] ^ ind[4] ^ ind[3] ^ ind[2] ^ ind[1]; 
assign outd[1]=ind[6] ^ ind[4] ^ ind[1]; 
assign outd[0]=ind[6] ^ ind[1] ^ ind[0]; 
endmodule
