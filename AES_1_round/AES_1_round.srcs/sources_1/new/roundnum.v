`timescale 1ns / 1ps

module roundnum(rc,data,keyin,keyout,rndout,clk);

input [3:0]rc;
input [127:0]data;
input [127:0]keyin;
output [127:0]keyout;
output [127:0]rndout;
input clk;

reg [127:0]a1,a2,a3;
wire [127:0]b1,b2,b3;
//wire [127:0] sb,sr,mcl;

reg [127:0]ka1,ka2,ka3;
wire [127:0]kr1,kr2,kr3;

KeyGeneration t0(rc,keyin,kr1);

subbytes t1(data,b1);
shiftrows t2(b1,b2);
mixcolumn t3(b2,b3);

assign keyout=kr1;
assign rndout= keyout^b3;


//always @(posedge clk)
//    begin
//        a1<=b1;
//        a2<=b2;
//        a3<=b3;
//        ka1<=kr1;
//        ka2<=ka1;
//        ka3<=ka2;
//    end
endmodule
