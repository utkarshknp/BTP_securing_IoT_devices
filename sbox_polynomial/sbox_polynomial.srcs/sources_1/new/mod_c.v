
module mod_c(output wire [1:0]out, input wire [1:0]in);
begin
assign out[1]=in[1];
assign out[0]=in[1]^in[0];
end
endmodule

