module inverter_g8(output wire [7:0]dataoutf, input wire [7:0]datain);
wire [7:0] dataout;
wire [3:0] w1;
wire [3:0] w2;
wire [3:0] w3;
wire [3:0] w4;
wire [3:0] w5;
assign w1= datain[7:4] ^ datain[3:0];
mul_g4 m1(w2,datain[7:4],datain[3:0]);
scale_square_g4 m2(w3,w1);
assign w4= w2 ^ w3;
inverter_g4 m3(w5,w4);
mul_g4 m4(dataout[7:4],w5,datain[3:0]);
mul_g4 m5(dataout[3:0],w5,datain[7:4]);
mul_mx m6(dataoutf,dataout);
endmodule
