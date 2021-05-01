`timescale 1ns / 1ps

module roundnum(rc,data,keyin,keyout,rndout,clk,clk_2f,rnddata);

input [3:0]rc;
input [127:0]data;
input [127:0]keyin,rnddata;
output [127:0]keyout;
output [127:0]rndout;
input clk,clk_2f;

wire [127:0]a1,a2,a3;
wire [127:0]b1,b2,b3;
//wire [127:0] sb,sr,mcl;

reg [127:0]ka1,ka2,ka3;
wire [127:0]kr1,kr2,kr3;

KeyGeneration t0(rc,keyin,kr1);


sdrr_module sr2(b1,rnddata,a1, clk,clk_2f);
sdrr_module sr3(b2,rnddata,a2, clk,clk_2f);
sdrr_module sr4(b3,rnddata,a3, clk,clk_2f);

subbytes t1(data,b1);
shiftrows t2(a1,b2);
mixcolumn t3(a2,b3);

assign keyout=ka3;
assign rndout= keyout^a3;


always @(posedge clk)
    begin
       // a1<=b1;
      //  a2<=b2;
       // a3<=b3;
        ka1<=kr1;
        ka2<=ka1;
        ka3<=ka2;
    end
endmodule
