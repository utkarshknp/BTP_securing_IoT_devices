`timescale 1ns / 1ps

module rounndnum_l(rc,rin,keylastin,fout);
input [3:0]rc;
input [127:0]rin;
input [127:0]keylastin;
output [127:0]fout;
wire [127:0] sb,sr,mcl,keyout;
KeyGeneration t0(rc,keylastin,keyout);
subbytes t1(rin,sb);
shiftrows t2(sb,sr);
assign fout= keyout^sr;
endmodule
