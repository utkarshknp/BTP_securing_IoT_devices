`timescale 1ns / 1ps

module testbenc();
reg [0:127]datain=128'h00112233445566778899aabbccddeeff;
reg [0:127]key=128'h000102030405060708090a0b0c0d0e0f;
wire [0:127]dataout;

aes_merged s1(datain,key,dataout);

endmodule
