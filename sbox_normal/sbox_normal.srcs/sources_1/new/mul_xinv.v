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
module mul_xinv(output wire [7:0]dataout, input wire [7:0]ind);
//Matrix X inverse
//11100111
//01110001
//01100011
//11100001
//10011011
//00000001
//01100001
//01001111
wire [7:0] outd;
assign outd[7]=ind[7] ^ ind[6] ^ ind[5] ^ ind[2] ^ ind[1] ^ ind[0];
assign outd[6]=ind[6] ^ ind[5] ^ ind[4] ^ ind[0];
assign outd[5]=ind[6] ^ ind[5] ^ ind[1] ^ ind[0]; 
assign outd[4]=ind[7] ^ ind[6] ^ ind[5] ^ ind[0]; 
assign outd[3]=ind[7] ^ ind[4] ^ ind[3] ^ ind[1] ^ ind[0]; 
assign outd[2]=ind[0]; 
assign outd[1]=ind[6] ^ ind[5] ^ ind[0]; 
assign outd[0]=ind[6] ^ ind[3] ^ ind[2] ^ ind[1] ^ ind[0]; 
inverter_g8 m1(dataout[7:0],outd[7:0]);

endmodule
