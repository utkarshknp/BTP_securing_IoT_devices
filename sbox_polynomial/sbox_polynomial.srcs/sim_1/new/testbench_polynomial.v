`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2020 10:55:00 AM
// Design Name: 
// Module Name: testbench_polynomial
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
module testbench_polynomial();
 integer i;
 reg [7:0] datain=8'b00000000;
 wire [7:0] dataout;
 mul_x_inv mx1(dataout[7:0],datain[7:0]);
 initial
 begin 
  for(i=0;i<256;i=i+1)
  begin
  #1
  datain<=datain+1;
  $monitor("simtime = %g, datain =%b, dataout =%b ",$time,datain,dataout);
 end
 end
endmodule