module mul_g2(output wire [1:0]dataout, input wire [1:0]i1,input wire [1:0]i0);
wire w1;
wire w2;
wire w3;
wire w4;
wire w5;
assign w1= i1[1] ^ i1[0];
assign w2= i0[1] ^ i0[0];
assign w3= i1[1] & i0[1];
assign w4= i1[0] & i0[0];
assign w5= w1&w2;
assign dataout[1]= w5 ^ w3;
assign dataout[0]= w5 ^ w4;
endmodule