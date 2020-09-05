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
module mul_mx(output wire [7:0]dataout, input wire [7:0]datain);
begin
//matrix MX
//00101000
//10001000
//01000001
//10101000
//11111000
//01101101
//00110010
//01010010
reg [7:0]matrix_b=8'b01100011;
assign dataout[7]= datain[5]^datain[3];
assign dataout[6]= datain[7]^datain[3]^matrix_b[6];
assign dataout[5]= datain[6]^datain[0]^matrix_b[5];
assign dataout[4]= datain[7]^datain[5]^datain[3]^datain[0];
assign dataout[3]= datain[7]^datain[6]^datain[5]^datain[4]^datain[3];
assign dataout[2]= datain[6]^datain[5]^datain[3]^datain[2]^datain[0];
assign dataout[1]= datain[5]^datain[4]^datain[1]^matrix_b[1];
assign dataout[0]= datain[6]^datain[4]^datain[1]^matrix_b[0];
end
endmodule
