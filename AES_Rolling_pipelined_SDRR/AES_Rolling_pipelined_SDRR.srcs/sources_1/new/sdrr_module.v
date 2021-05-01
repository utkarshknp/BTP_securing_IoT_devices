`timescale 1ns / 1ps



module sdrr_module( data,random_data,output_data, clk,clk_2f);
input wire [127:0] data, random_data;
output [127:0] output_data;
input wire clk,clk_2f;
reg [127:0] r1, r2;

assign output_data=r2;

always @(posedge clk_2f)
begin
r2<=r1;
r1<=clk?random_data:data;
end
endmodule

