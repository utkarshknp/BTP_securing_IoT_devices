`timescale 1ns / 1ps

module roundnum(data,keyin,rndout);
input [127:0]data;
input [127:0]keyin;
output [127:0]rndout;
wire [127:0] sb,sr,mcl;
shiftrows t2(data,sb);
subbytes t1(sb,sr);
assign mcl= keyin^sr;
mixcolumn t3(mcl,rndout);
endmodule
