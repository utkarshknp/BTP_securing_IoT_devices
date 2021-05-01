`timescale 1ns / 1ps


module testbenc();

reg [127:0] datain;
reg [127:0] keyin=128'h000102030405060708090a0b0c0d0e0f;
reg clk;
wire [127:0]dataout;
reg[5:0] rn;

Top_mod m1(datain, keyin, dataout, clk,rn);

initial
begin
$monitor("%h",dataout);

datain=128'h00000000000000000000000000000000;
rn=6'b0;
clk=1'b0;
#5;

//datain=128'h00112233445566778899aabbccddeeff;
datain=128'hffffffffffffffffff000000000000ff;
rn=0;
#2 ;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'hff00ffffffff00ffff00ff0000ff00ff;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'hff00ff0000ff00ffff00ffffffff00ff;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'hff000000000000ffffffffffffffffff;
//datain=128'hff000000000000ffffffffffffffffff;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;

datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;


datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;


datain=128'h00000000000000000000000000000000;
rn=(rn+1)%36;#2;
clk=~clk;
#5;
clk=~clk;
#5;




end
endmodule

/*
ffffffffffffffff
ff000000000000ff
ff00ffffffff00ff
ff00ff0000ff00ff
ff00ff0000ff00ff
ff00ffffffff00ff
ff000000000000ff
ffffffffffffffff
*/

