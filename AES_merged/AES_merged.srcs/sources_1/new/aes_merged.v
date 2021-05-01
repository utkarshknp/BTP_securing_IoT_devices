`timescale 1ns / 1ps

module aes_merged(datain,key,dataout);

input [127:0] datain;
input [127:0] key;
output[127:0] dataout;    
wire [127:0] r0_out;
wire [127:0] r1_out,r2_out,r3_out,r4_out,r5_out,r6_out,r7_out,r8_out,r9_out;
wire [127:0] keyout1,keyout2,keyout3,keyout4,keyout5,keyout6,keyout7,keyout8,keyout9;

assign r0_out = datain^key;	 
roundnum r1(4'b0000,r0_out,key,keyout1,r1_out);
roundnum r2(4'b0001,r1_out,keyout1,keyout2,r2_out);
roundnum r3(4'b0010,r2_out,keyout2,keyout3,r3_out);
roundnum r4(4'b0011,r3_out,keyout3,keyout4,r4_out);
roundnum r5(4'b0100,r4_out,keyout4,keyout5,r5_out);
roundnum r6(4'b0101,r5_out,keyout5,keyout6,r6_out);
roundnum r7(4'b0110,r6_out,keyout6,keyout7,r7_out);
roundnum r8(4'b0111,r7_out,keyout7,keyout8,r8_out);
roundnum r9(4'b1000,r8_out,keyout8,keyout9,r9_out);
rounndnum_l r10(4'b1001,r9_out,keyout9,dataout);   
endmodule
