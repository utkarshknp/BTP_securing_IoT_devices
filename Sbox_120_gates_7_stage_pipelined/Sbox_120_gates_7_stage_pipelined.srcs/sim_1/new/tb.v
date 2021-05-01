`timescale 1ns / 1ps

module testbenc();
 integer i;
 reg [7:0] datain=8'b00000000;
 wire [7:0] dataout;
 reg clk=1'b0;
 bSbox mx1(datain[7:0],dataout[7:0],clk);
 
 initial
 begin 
  for(i=0;i<255;i=i+1)
  begin
   //datain<=datain+1;
    #2 clk<=~clk;
   $monitor("simtime = %g, datain =%b, dataout =%b ",$time,datain,dataout);
  end
 end
 always @(posedge clk)
 begin
 datain<=datain+1;
 end
endmodule
