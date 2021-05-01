`timescale 1ns / 1ps

module aes_merged(datain,key,dataout,clk);

input [127:0] datain;
input [127:0] key;input clk;
output[127:0] dataout;    
reg [127:0] r0_out;
wire[127:0] r1_out;//,r2_out,r3_out,r4_out,r5_out,r6_out,r7_out,r8_out,r9_out;
wire [127:0] keyout1;//,keyout2,keyout3,keyout4,keyout5,keyout6,keyout7,keyout8,keyout9;
wire [127:0] x22,x33,x44,x55,x66,x77,x88,x99,k11,k22,k33,k44,k55,k66,k77,k88,k99;
reg [127:0] x1,x2,x3,x4,x5,x6,x7,x8,x9,k1,k2,k3,k4,k5,k6,k7,k8,k9;
roundnum r1(4'b0000,r0_out,key,keyout1,r1_out);
roundnum r2(4'b0001,x1,k1,k22,x22);
roundnum r3(4'b0010,x2,k2,k33,x33);
roundnum r4(4'b0011,x3,k3,k44,x44);
roundnum r5(4'b0100,x4,k4,k55,x55);
roundnum r6(4'b0101,x5,k5,k66,x66);
roundnum r7(4'b0110,x6,k6,k77,x77);
roundnum r8(4'b0111,x7,k7,k88,x88);
roundnum r9(4'b1000,x8,k8,k99,x99);
rounndnum_l r10(4'b1001,x9,k9,dataout);  
always @(posedge clk)
begin
r0_out <= datain^key;	 
x1<=r1_out;
k1<=keyout1;
x2<=x22;
k2<=k22;
x3<=x33;
k3<=k33;
x4<=x44;
k4<=k44;
x5<=x55;
k5<=k55;
x6<=x66;
k6<=k66;
x7<=x77;
k7<=k77;
x8<=x88;
k8<=k88;
x9<=x99;
k9<=k99;
end 
endmodule
