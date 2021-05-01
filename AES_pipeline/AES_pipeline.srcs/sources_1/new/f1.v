`timescale 1ns / 1ps

module testbenc();
reg [0:127]datain=128'h3243f6a8885a308d313198a2e0370734;
reg [0:127]key=128'h2b7e151628aed2a6abf7158809cf4f3c;
wire [0:127]dataout;
reg clk=1'b0;
aes_merged s1(datain,key,dataout,clk);
integer i=0;
initial
 begin 
  for(i=0;i<100;i=i+1)
  begin
    #5 clk=~clk; 
   end
   end

endmodule
