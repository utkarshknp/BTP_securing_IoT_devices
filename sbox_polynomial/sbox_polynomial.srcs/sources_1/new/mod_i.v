`timescale 1ns / 1ps
module mod_i(output wire [1:0]out, input wire [1:0]in);
begin
assign out[0]=in[1];
assign out[1]=in[0];
end
endmodule
