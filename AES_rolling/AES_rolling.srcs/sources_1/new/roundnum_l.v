`timescale 1ns / 1ps

module rounndnum_l(rc,rin,keylastin,fout,clk);
input [3:0]rc;
input [127:0]rin;
input [127:0]keylastin;
output [127:0]fout;
input clk;
wire [127:0] sb,sr,keyout;

KeyGeneration t0(rc,keylastin,keyout);
subbytes t1(rin,sb);
shiftrows t2(sb,sr);
assign fout= keyout^sr;

endmodule
