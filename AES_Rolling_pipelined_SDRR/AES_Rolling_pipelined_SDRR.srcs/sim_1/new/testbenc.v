`timescale 1ns / 1ps

module testbenc();

reg clk;reg clk_2f;
reg bool_datain;
reg [127:0] rnddatainuser;
reg [127:0] datain,key;
reg [5:0]rn;
wire [127:0]dataout;


top_mod a1(clk,bool_datain,rnddatainuser,datain,key,rn,clk_2f,dataout);

initial
begin
clk=0;
clk_2f=0;
bool_datain=1;
rnddatainuser=128'habcdeffecda187321896328732129873;
datain=128'h00112233445566778899aabbccddeeff;
key=128'h000102030405060708090a0b0c0d0e0f;
rn=0;
#2;
datain=128'h0;
//datain=128'hffffffffffffffffff000000000000ff;
clk=~clk;   #2;
bool_datain=0;
clk=~clk; #2



rn=0;
//datain=128'hffffffffffffffffff000000000000ff;
datain=128'h00112233445566778899aabbccddeeff;
 #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;

rn=(rn+1)%36;
//datain=128'hff00ffffffff00ffff00ff0000ff00ff;#1;
datain=128'h00112233445566778899aabbccddeeff; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;



rn=(rn+1)%36;
//datain=128'hff00ff0000ff00ffff00ffffffff00ff; #1;
datain=128'h00112233445566778899aabbccddeeff; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;



rn=(rn+1)%36;
//datain=128'hff000000000000ffffffffffffffffff; #1;
datain=128'h00112233445566778899aabbccddeeff; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;
rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;
rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;
rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;
rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;
rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;


rn=(rn+1)%36;
datain=128'h00000000000000000000000000000000; #1;
clk_2f=~clk_2f;
clk=~clk;
#2;
clk_2f=~clk_2f;
#2;
clk=~clk;
clk_2f=~clk_2f;
#2;
clk_2f=~clk_2f;
#2;







//datain=128'hff00ffffffff00ffff00ff0000ff00ff;
//datain=128'hff00ff0000ff00ffff00ffffffff00ff;
//datain=128'hff000000000000ffffffffffffffffff;



end
endmodule
