`timescale 1ns / 1ps

module testbenc();
 integer i;
 reg [7:0] datain=8'b00000000;
 wire [7:0] dataout;
 Sbox_r mx1(datain[7:0],dataout[7:0]);
 
 initial
 begin 
  for(i=0;i<255;i=i+1)
  begin
   #2 datain=datain+1;
   $monitor("simtime = %g, datain =%b, dataout =%b ",$time,datain,dataout);
  end
 end
endmodule
