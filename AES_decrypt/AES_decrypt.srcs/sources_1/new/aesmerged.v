`timescale 1ns / 1ps

module aes_decryption(
output [0:127]DATAOUT_FINAL_OUTPUT,input [0:127]key,input [0:127]datain);

//EXPECTED OUTPUT=00112233445566778899aabbccddeeff

wire [127:0]keyout1,keyout2,keyout3,keyout4,keyout5,keyout6,keyout7,keyout8,keyout9,keyout10;
keygen k1(key,keyout1,keyout2,keyout3,keyout4,keyout5,keyout6,keyout7,keyout8,keyout9,keyout10);
wire [127:0] r0_out;
wire [127:0] r1_out,r2_out,r3_out,r4_out,r5_out,r6_out,r7_out,r8_out,r9_out;

assign r0_out = datain^keyout10;	 
roundnum r1(r0_out,keyout9,r1_out);
roundnum r2(r1_out,keyout8,r2_out);
roundnum r3(r2_out,keyout7,r3_out);
roundnum r4(r3_out,keyout6,r4_out);
roundnum r5(r4_out,keyout5,r5_out);
roundnum r6(r5_out,keyout4,r6_out);
roundnum r7(r6_out,keyout3,r7_out);
roundnum r8(r7_out,keyout2,r8_out);
roundnum r9(r8_out,keyout1,r9_out);
rounndnum_l r10(r9_out,key,DATAOUT_FINAL_OUTPUT);   
endmodule
