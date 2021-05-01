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