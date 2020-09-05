module inverter_g4(output wire [3:0]dataout, input wire [3:0]datain);
wire [1:0] w1;
wire [1:0] w2;
wire [1:0] w3;
wire [1:0] w4;
wire [1:0] w5;
assign w1= datain[3:2] ^ datain[1:0];
mul_g2 m1(w2,datain[3:2],datain[1:0]);
//scale_square_g2 m2(w3,w1);
scale_w2_square_g2 m2(w3,w1);
assign w4= w2 ^ w3;
inverter_g2 m3(w5,w4);
mul_g2 m4(dataout[3:2],w5,datain[1:0]);
mul_g2 m5(dataout[1:0],w5,datain[3:2]);
endmodule
