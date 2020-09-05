`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2020 11:08:39 AM
// Design Name: 
// Module Name: mod_xinvmul
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
module mx_mul(output wire [7:0]dataout, input wire [3:0]datain1, input wire[3:0]datain0);
begin
wire [7:0]datain;
assign datain[7:0]={datain1[3:0],datain0[3:0]};
//matrix MX
//10001100
//11110000
//10000100
//10010011
//00000111
//01111101
//10000001
//11000111
reg [7:0]matrix_b=8'b01100011;
assign dataout[7]= datain[7]^datain[3]^datain[2];
assign dataout[6]= datain[7]^datain[6]^datain[5]^datain[4]^matrix_b[6];
assign dataout[5]= datain[7]^datain[2]^matrix_b[5];
assign dataout[4]= datain[7]^datain[4]^datain[1]^datain[0];
assign dataout[3]= datain[2]^datain[1]^datain[0];
assign dataout[2]= datain[6]^datain[5]^datain[4]^datain[3]^datain[2]^datain[0];
assign dataout[1]= datain[7]^datain[0]^matrix_b[1];
assign dataout[0]= datain[7]^datain[6]^datain[2]^datain[1]^datain[0]^matrix_b[0];
end
endmodule
