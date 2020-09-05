module scale_g2(output wire[1:0]dataout,input wire[1:0]datain);
assign dataout[1]=datain[0] ^ datain[1];
assign dataout[0]=datain[1];
endmodule