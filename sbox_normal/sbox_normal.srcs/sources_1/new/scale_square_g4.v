module scale_square_g4(output wire [3:0]dataout,input wire [3:0]datain);
wire [1:0]w1;
wire [1:0]w2;
wire [1:0]w3;
wire [1:0]w4;
wire [1:0]w5;
assign w1= datain[3:2] ^ datain[1:0];
scale__w2_g2 m1(w2,datain[1:0]);
//scale_n2_g2 m2(dataout[3:2],w1);
//scale_n2_g2 m3(dataout[1:0],w2);
mul_g2 m2(dataout[3:2],w1,w1);
mul_g2 m3(dataout[1:0],w2,w2);

endmodule