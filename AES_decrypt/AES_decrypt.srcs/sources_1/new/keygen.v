`timescale 1ns / 1ps

module keygen(input [127:0]keyin, output [127:0]keyout1,output [127:0]keyout2,output [127:0]keyout3,output [127:0]keyout4,output [127:0]keyout5,
output [127:0]keyout6,output [127:0]keyout7,output [127:0]keyout8,output [127:0]keyout9,output [127:0]keyout10);
KeyGeneration r1(4'b0000,keyin,keyout1);
KeyGeneration r2(4'b0001,keyout1,keyout2);
KeyGeneration r3(4'b0010,keyout2,keyout3);
KeyGeneration r4(4'b0011,keyout3,keyout4);
KeyGeneration r5(4'b0100,keyout4,keyout5);
KeyGeneration r6(4'b0101,keyout5,keyout6);
KeyGeneration r7(4'b0110,keyout6,keyout7);
KeyGeneration r8(4'b0111,keyout7,keyout8);
KeyGeneration r9(4'b1000,keyout8,keyout9);
KeyGeneration r10(4'b1001,keyout9,keyout10);   
endmodule

//keygenration mod

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
bSbox1 a1((w3[23:16]),(tem[31:24]));
bSbox1 a2((w3[15:8]),(tem[23:16]));
bSbox1 a3((w3[7:0]),(tem[15:8]));
bSbox1 a4((w3[31:24]),(tem[7:0]));

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
