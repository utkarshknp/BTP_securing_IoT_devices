`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2020 05:17:11 PM
// Design Name: 
// Module Name: scale_n2_g2
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


module scale_n2_g2(output wire [1:0]dataout, input wire[1:0]datain);
assign dataout[1]=datain[0];
assign dataout[0]=datain[1] ^ datain[0];
endmodule
