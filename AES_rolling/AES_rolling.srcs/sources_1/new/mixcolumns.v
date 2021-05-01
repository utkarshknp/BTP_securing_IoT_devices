`timescale 1ns / 1ps

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
