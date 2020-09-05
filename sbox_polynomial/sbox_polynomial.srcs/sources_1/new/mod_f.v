`timescale 1ns / 1ps
module mod_f(output wire [1:0]out, input wire [1:0]i1, input wire [1:0]i0);
begin
wire w1;
//wire w2;
wire w3;
wire w4;
wire w5;
wire w6;
//and(w1,i1[1],i0[1]);
assign w1=i1[1] & i0[1];
assign w3= i1[1] ^ i1[0];
assign w5= i0[1] ^ i0[0];
assign w4= w3 & w5;
assign w6=i1[0] & i0[0];
assign out[1]=w6 ^ w4;
assign out[0]=w6 ^ w1;
end
endmodule

