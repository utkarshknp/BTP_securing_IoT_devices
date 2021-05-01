`timescale 1ns / 1ps

module aes_merged(datain,key,dataout,clk,rn);

input [127:0] datain;
input [127:0] key;
input clk;
output [127:0]dataout;
input wire [3:0] rn;  

reg [127:0] r0_out;
reg [127:0] keyin;
wire[127:0] r1_out;
wire [127:0] keyout1;

wire [127:0]mux_input_data,mux_input_key;

assign mux_input_data = (!(rn[3]|rn[2]|rn[1]|rn[0]))?(datain^key):r0_out;
assign mux_input_key = (!(rn[3]|rn[2]|rn[1]|rn[0]))?key:keyin;

roundnum r1(rn,mux_input_data,mux_input_key,keyout1,dataout,clk);
//rounndnum_l r10(4'b1001,r1_out,keyout1,dataout,clk);  

always @(posedge clk)
    begin
        r0_out <=  r1_out;
        keyin  <=  keyout1;
    end 

endmodule
