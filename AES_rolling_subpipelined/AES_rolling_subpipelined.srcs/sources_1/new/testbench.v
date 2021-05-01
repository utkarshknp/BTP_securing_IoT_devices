/*`timescale 1ns / 1ps

module testbenc();
reg [127:0]datain=128'h3243f6a8885a308d313198a2e0370734;
reg [127:0]key=128'h2b7e151628aed2a6abf7158809cf4f3c;
reg [127:0]sampleout=128'h3925841d02dc09fbdc118597196a0b32;

wire [127:0]dataout;
reg clk=1'b1;
reg [5:0]rn=6'b100010;

wire true_output = ~(|(sampleout ^ dataout));  // THE OUTPUT IS SHOULD BE TAKEN WHEN TRUE_OUTPUT =1 

aes_merged s1(datain,key,dataout,clk,rn[5:2]);

integer i=0;
initial
 begin 
  for(i=0;i<1000000;i=i+1)
  begin
     if(i%2==0)
      begin
       #2 rn=(rn+1)%36;
       clk=~clk;
      end
     else
     #2 clk=~clk; 
   end
   end
endmodule






   
//always @(posedge clk)
//begin
 // rn=(rn+1)%35;
//end


*/