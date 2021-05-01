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
