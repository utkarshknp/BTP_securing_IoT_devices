`timescale 1ns / 1ps
module mod_e(output wire [3:0]out, input wire [3:0]i1,input wire [3:0]i0);
begin
wire [1:0]w1;
wire [1:0]w2;
wire [1:0]w3;
wire [1:0]w4;
wire [1:0]w5;
wire [1:0]w6;
mod_f f1(w1[1:0],i1[3:2],i0[3:2]);
mod_g g1(w2[1:0],w1[1:0]);
assign w3[1:0]= i1[3:2] ^ i1[1:0];
assign w5[1:0]= i0[3:2] ^ i0[1:0];
mod_f f2(w4[1:0],w3[1:0],w5[1:0]);
mod_f f3(w6[1:0],i1[1:0],i0[1:0]);
assign out[3:2]=w6[1:0] ^ w4[1:0];
assign out[1:0]=w6[1:0] ^ w2[1:0];
end 
endmodule

