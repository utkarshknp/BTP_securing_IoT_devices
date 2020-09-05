`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2020 03:06:36 PM
// Design Name: 
// Module Name: testbench_sbox
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


module testbench_sbox();
 integer i;
 reg [7:0] datain=8'b00000000;
 wire [7:0] dataout;
 sbox s1(dataout,datain);
 initial
 begin 
 
 for(i=0;i<256;i=i+1)
 begin
 #10
 datain<=datain+1;
 $monitor("simtime = %g, datain =%b, dataout =%b ",$time,datain,dataout);
 end
 end
endmodule
