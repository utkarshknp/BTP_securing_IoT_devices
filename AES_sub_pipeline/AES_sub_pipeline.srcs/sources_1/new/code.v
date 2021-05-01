`timescale 1ns / 1ps

module aes_merged(datain,key,dataout,clk);

input [127:0] datain;
input [127:0] key;
input clk;
output[127:0] dataout;    
reg [127:0] r0_out;
wire[127:0] r1_out;//,r2_out,r3_out,r4_out,r5_out,r6_out,r7_out,r8_out,r9_out;
wire [127:0] keyout1;//,keyout2,keyout3,keyout4,keyout5,keyout6,keyout7,keyout8,keyout9;
wire [127:0] x22,x33,x44,x55,x66,x77,x88,x99,k11,k22,k33,k44,k55,k66,k77,k88,k99;
reg [127:0] x1,k0,x2,x3,x4,x5,x6,x7,x8,x9,k1,k2,k3,k4,k5,k6,k7,k8,k9;
roundnum r1(4'b0000,r0_out,k0,keyout1,r1_out,clk);
roundnum r2(4'b0001,x1,k1,k22,x22,clk);
roundnum r3(4'b0010,x2,k2,k33,x33,clk);
roundnum r4(4'b0011,x3,k3,k44,x44,clk);
roundnum r5(4'b0100,x4,k4,k55,x55,clk);
roundnum r6(4'b0101,x5,k5,k66,x66,clk);
roundnum r7(4'b0110,x6,k6,k77,x77,clk);
roundnum r8(4'b0111,x7,k7,k88,x88,clk);
roundnum r9(4'b1000,x8,k8,k99,x99,clk);
rounndnum_l r10(4'b1001,x9,k9,dataout,clk);  
always @(posedge clk)
begin
r0_out <= datain^key;
k0<=key;	 
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

//`timescale 1ns / 1ps

module roundnum(rc,data,keyin,keyout,rndout,clk);
input clk;
input [3:0]rc;
input [127:0]data;
input [127:0]keyin;
output [127:0]keyout;
wire [127:0] keyoutll;
output [127:0]rndout;
wire [127:0] sb,sr,mcl;
reg [127:0] sbr,srr,mclr,bf1,bf2,bf3;
KeyGeneration t0(rc,keyin,keyoutll);
subbytes t1(data,sb);
shiftrows t2(sbr,sr);
mixcolumn t3(srr,mcl);
assign rndout= keyout^mclr;
assign keyout=bf3;
always @(posedge clk)
begin
sbr<=sb;
bf1<=keyoutll;
srr<=sr;
bf2<=bf1;
mclr<=mcl;
bf3<=bf2;
end
endmodule


//`timescale 1ns / 1ps

module rounndnum_l(rc,rin,keylastin,fout,clk);
input [3:0]rc;
input clk;
input [127:0]rin;
input [127:0]keylastin;
output [127:0]fout;
wire [127:0] sb,sr,mcl,keyout;
reg [127:0] sbr,srr,bf1,bf2;
KeyGeneration t0(rc,keylastin,keyout);
subbytes t1(rin,sb);
shiftrows t2(sbr,sr);
assign fout= bf2^srr;
always @(posedge clk)
begin
sbr<=sb;
bf1<=keyout;
srr<=sr;
bf2<=bf1;


end
endmodule


//`timescale 1ns / 1ps

module KeyGeneration(rc,key,keyout);
    
input [3:0] rc;
input [127:0]key;
output [127:0] keyout; 
wire [31:0] w0,w1,w2,w3,tem;               
assign w0 = key[127:96];
assign w1 = key[95:64];
assign w2 = key[63:32];
assign w3 = key[31:0];
assign keyout[127:96]= w0 ^ tem ^ rcon(rc);
assign keyout[95:64] = w0 ^ tem ^ rcon(rc)^ w1;
assign keyout[63:32] = w0 ^ tem ^ rcon(rc)^ w1 ^ w2;
assign keyout[31:0]  = w0 ^ tem ^ rcon(rc)^ w1 ^ w2 ^ w3;      
bSbox a1((w3[23:16]),(tem[31:24]));
bSbox a2((w3[15:8]),(tem[23:16]));
bSbox a3((w3[7:0]),(tem[15:8]));
bSbox a4((w3[31:24]),(tem[7:0]));

function [31:0]	rcon;
input	[3:0]	rc;
 case(rc)	
   4'h0: rcon=32'h01_00_00_00;
   4'h1: rcon=32'h02_00_00_00;
   4'h2: rcon=32'h04_00_00_00;
   4'h3: rcon=32'h08_00_00_00;
   4'h4: rcon=32'h10_00_00_00;
   4'h5: rcon=32'h20_00_00_00;
   4'h6: rcon=32'h40_00_00_00;
   4'h7: rcon=32'h80_00_00_00;
   4'h8: rcon=32'h1b_00_00_00;
   4'h9: rcon=32'h36_00_00_00;
   default: rcon=32'h00_00_00_00;
endcase
endfunction
endmodule


//`timescale 1ns / 1ps

module GF_SQ_2 ( A, Q );
input [1:0] A;
output [1:0] Q;
assign Q = { A[0], A[1] };
endmodule

module GF_MULS_2 ( A, ab, B, cd, Q );
input [1:0] A;
input ab;
input [1:0] B;
input cd;
output [1:0] Q;
wire abcd, p, q;
assign abcd = ~(ab & cd);
assign p = (~(A[1] & B[1])) ^ abcd;
assign q = (~(A[0] & B[0])) ^ abcd;
assign Q = { p, q };
endmodule

module GF_MULS_SCL_2 ( A, ab, B, cd, Q );
input [1:0] A;
input ab;
input [1:0] B;
input cd;
output [1:0] Q;
wire t, p, q;
assign t = ~(A[0] & B[0]);
assign p = (~(ab & cd)) ^ t;
assign q = (~(A[1] & B[1])) ^ t;
assign Q = { p, q };
endmodule

module GF_INV_4 ( A, Q );
input [3:0] A;
output [3:0] Q;
wire [1:0] a, b, c, d, p, q;
wire sa, sb, sd;
assign a = A[3:2];
assign b = A[1:0];
assign sa = a[1] ^ a[0];
assign sb = b[1] ^ b[0];
assign c = { 
~(a[1] | b[1]) ^   (~(sa & sb)) ,
~(sa | sb)     ^ (~(a[0] & b[0])) };
GF_SQ_2 dinv( c, d);
assign sd = d[1] ^ d[0];
GF_MULS_2 pmul(d, sd, b, sb, p);
GF_MULS_2 qmul(d, sd, a, sa, q);
assign Q = { p, q };
endmodule

module GF_MULS_4 ( A, a, Al, Ah, aa, B, b, Bl, Bh, bb, Q );
input [3:0] A;
input [1:0] a;
input Al;
input Ah;
input aa;
input [3:0] B;
input [1:0] b;
input Bl;
input Bh;
input bb;
output [3:0] Q;
wire [1:0] ph, pl, ps, p;
wire t;
GF_MULS_2 himul(A[3:2], Ah, B[3:2], Bh, ph);
GF_MULS_2 lomul(A[1:0], Al, B[1:0], Bl, pl);
GF_MULS_SCL_2 summul( a, aa, b, bb, p);
assign Q = { (ph ^ p), (pl ^ p) };
endmodule

module GF_INV_8 ( A, Q );
input [7:0] A;
output [7:0] Q;
wire [3:0] a, b, c, d, p, q;
wire [1:0] sa, sb, sd, t; 
wire al, ah, aa, bl, bh, bb, dl, dh, dd;
wire c1, c2, c3;
assign a = A[7:4];
assign b = A[3:0];
assign sa = a[3:2] ^ a[1:0];
assign sb = b[3:2] ^ b[1:0];
assign al = a[1] ^ a[0];
assign ah = a[3] ^ a[2];
assign aa = sa[1] ^ sa[0];
assign bl = b[1] ^ b[0];
assign bh = b[3] ^ b[2];
assign bb = sb[1] ^ sb[0];
assign c1 = ~(ah & bh);
assign c2 = ~(sa[0] & sb[0]);
assign c3 = ~(aa & bb);
assign c = { 
(~(sa[0] | sb[0]) ^ (~(a[3] & b[3]))) ^      c1            ^ c3 ,
(~(sa[1] | sb[1]) ^ (~(a[2] & b[2]))) ^      c1            ^ c2 ,
(~(al | bl)       ^ (~(a[1] & b[1]))) ^      c2            ^ c3 ,
(~(a[0] | b[0])   ^   (~(al & bl)))   ^ (~(sa[1] & sb[1])) ^ c2 };
GF_INV_4 dinv( c, d);
assign sd = d[3:2] ^ d[1:0];
assign dl = d[1] ^ d[0];
assign dh = d[3] ^ d[2];
assign dd = sd[1] ^ sd[0];
GF_MULS_4 pmul(d, sd, dl, dh, dd, b, sb, bl, bh, bb, p);
GF_MULS_4 qmul(d, sd, dl, dh, dd, a, sa, al, ah, aa, q);
assign Q = { p, q };
endmodule

module bSbox_1 ( A, D );
input [7:0] A;
output wire [7:0] D;
wire [7:0] B, C;
wire R1, R2, R3;
wire T1, T2, T3, T4, T5, T6, T7, T8, T9, T10;
assign R1 = A[6] ^ A[5] ^ A[0] ;
assign R2 = R1 ^ A[1] ;
assign R3 = A[3] ^ A[1] ^ A[0] ;
assign B[7] = R2 ^ A[2] ^ A[7] ;
assign B[6] = R1 ^ A[4] ;
assign B[5] = R2 ;
assign B[4] = R1 ^ A[7] ;
assign B[3] = A[7] ^ A[4] ^ R3 ;
assign B[2] = A[0] ;
assign B[1] = R1 ;
assign B[0] = A[2] ^ A[6] ^ R3 ;
GF_INV_8 inv( B, C );
assign T1 = C[7] ~^ C[3] ; 
assign T2 = C[6] ^ C[4] ;
assign T3 = C[6] ~^ C[0] ; 
assign T4 = C[5] ^ C[3] ; 
assign T5 = C[5] ~^ T1 ;
assign T6 = C[5] ~^ C[1] ;
assign T7 = C[4] ^ T6 ;
assign T8 = C[2] ^ T4 ;
assign T9 = C[1] ~^ T2 ;
assign D[7] = T4 ;
assign D[6] = T1 ;
assign D[5] = T3 ;
assign D[4] = T5 ;
assign D[3] = T2 ^ T5 ;
assign D[2] = T3 ~^ T8 ;
assign D[1] = T7 ;
assign D[0] = T9 ;
endmodule

module bSbox ( A, S);
input [7:0] A;
output [7:0] S;
bSbox_1 sbe(A,S);
endmodule

//`timescale 1ns / 1ps

module subbytes(datain,sb);

input [127:0] datain;
output [127:0] sb;

bSbox q0( datain[127:120], sb[127:120]);
bSbox q1( datain[119:112], sb[119:112]);
bSbox q2( datain[111:104], sb[111:104]);
bSbox q3( datain[103:96], sb[103:96]);
bSbox q4( datain[95:88], sb[95:88]);
bSbox q5( datain[87:80], sb[87:80]);
bSbox q6( datain[79:72], sb[79:72]);
bSbox q7( datain[71:64], sb[71:64]);
bSbox q8( datain[63:56], sb[63:56]);
bSbox q9( datain[55:48], sb[55:48]);
bSbox q10(datain[47:40], sb[47:40]);
bSbox q11( datain[39:32], sb[39:32]);
bSbox q12( datain[31:24], sb[31:24]);
bSbox q13( datain[23:16], sb[23:16]);
bSbox q14( datain[15:8], sb[15:8]);
bSbox q15( datain[7:0], sb[7:0]);
	  
endmodule


module shiftrows(datain,dataout);

input [0:127] datain;
output [0:127] dataout;

assign dataout[0:7] = datain[0:7];  
assign dataout[32:39] = datain[32:39];
assign dataout[64:71] = datain[64:71];
assign dataout[96:103] = datain[96:103];
assign dataout[40:47] = datain[72:79];
assign dataout[72:79] = datain[104:111];
assign dataout[104:111] = datain[8:15];
assign dataout[8:15] = datain[40:47];
assign dataout[80:87] = datain[16:23];
assign dataout[112:119] = datain[48:55];
assign dataout[16:23] = datain[80:87];
assign dataout[48:55] = datain[112:119];
assign dataout[120:127] = datain[88:95];
assign dataout[24:31] = datain[120:127];
assign dataout[56:63] = datain[24:31];
assign dataout[88:95] = datain[56:63]; 
endmodule


//`timescale 1ns / 1ps

module mixcolumn(datain,dataout);
input [127:0] datain;
output [127:0] dataout;



assign dataout[127:120]= compute (datain[127:120],datain[119:112],datain[111:104],datain[103:96]);
assign dataout[119:112]= compute (datain[119:112],datain[111:104],datain[103:96],datain[127:120]);
assign dataout[111:104]= compute (datain[111:104],datain[103:96],datain[127:120],datain[119:112]);
assign dataout[103:96]= compute (datain[103:96],datain[127:120],datain[119:112],datain[111:104]);

assign dataout[95:88]= compute (datain[95:88],datain[87:80],datain[79:72],datain[71:64]);
assign dataout[87:80]= compute (datain[87:80],datain[79:72],datain[71:64],datain[95:88]);
assign dataout[79:72]= compute (datain[79:72],datain[71:64],datain[95:88],datain[87:80]);
assign dataout[71:64]= compute (datain[71:64],datain[95:88],datain[87:80],datain[79:72]);

assign dataout[63:56]= compute (datain[63:56],datain[55:48],datain[47:40],datain[39:32]);
assign dataout[55:48]= compute (datain[55:48],datain[47:40],datain[39:32],datain[63:56]);
assign dataout[47:40]= compute (datain[47:40],datain[39:32],datain[63:56],datain[55:48]);
assign dataout[39:32]= compute (datain[39:32],datain[63:56],datain[55:48],datain[47:40]);

assign dataout[31:24]= compute (datain[31:24],datain[23:16],datain[15:8],datain[7:0]);
assign dataout[23:16]= compute (datain[23:16],datain[15:8],datain[7:0],datain[31:24]);
assign dataout[15:8]= compute (datain[15:8],datain[7:0],datain[31:24],datain[23:16]);
assign dataout[7:0]= compute (datain[7:0],datain[31:24],datain[23:16],datain[15:8]);


function [7:0] compute;
input [7:0] a,b,c,d;
begin
compute[7]=a[6] ^ b[6] ^ b[7] ^ c[7] ^ d[7];
compute[6]=a[5] ^ b[5] ^ b[6] ^ c[6] ^ d[6];
compute[5]=a[4] ^ b[4] ^ b[5] ^ c[5] ^ d[5];
compute[4]=a[3] ^ a[7] ^ b[3] ^ b[4] ^ b[7] ^ c[4] ^ d[4];
compute[3]=a[2] ^ a[7] ^ b[2] ^ b[3] ^ b[7] ^ c[3] ^ d[3];
compute[2]=a[1] ^ b[1] ^ b[2] ^ c[2] ^ d[2];
compute[1]=a[0] ^ a[7] ^ b[0] ^ b[1] ^ b[7] ^ c[1] ^ d[1];
compute[0]=a[7] ^ b[7] ^ b[0] ^ c[0] ^ d[0];
end
endfunction
endmodule


