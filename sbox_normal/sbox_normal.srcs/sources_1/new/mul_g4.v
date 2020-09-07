module mul_g4(output wire [3:0]dataout, input wire [3:0]i1,input wire [3:0]i0);
wire [1:0]w1;
wire [1:0]w2;
wire [1:0]w3;
wire [1:0]w4;
wire [1:0]w5;
wire [1:0]w6;
wire [1:0]w7;
assign w1= i1[3:2] ^ i1[1:0];
assign w2= i0[3:2] ^ i0[1:0];
mul_g2 m1(w3,i1[3:2],i0[3:2]);
mul_g2 m2(w4,i1[1:0],i0[1:0]);
mul_g2 m3(w5,w1,w2);
scale_g2 m4(w6,w5);
scale_g2 m5(w7,w6);
assign dataout[3:2]= w7 ^ w3;
assign dataout[1:0]= w7 ^ w4;
endmodule
