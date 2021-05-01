`timescale 1ns / 1ps

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
