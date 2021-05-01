`timescale 1ns / 1ps

module rounndnum_l(rin,keylastin,fout);
input [127:0]rin;
input [127:0]keylastin;
output [127:0]fout;
wire [127:0] sb,sr,mcl,keyout;
shiftrows t2(rin,sb);
subbytes t1(sb,sr);
assign fout= keylastin^sr;
endmodule
