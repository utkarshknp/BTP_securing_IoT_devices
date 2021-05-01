`timescale 1ns / 1ps

module aes_merged(datain,key,dataout,clk,rn,clk_2f,rnddata);


input [127:0] datain,rnddata;
input [127:0] key;
input clk,clk_2f;
output [127:0]dataout;
input wire [3:0] rn;  

wire [127:0] r0_out;
reg [127:0] keyin;
wire[127:0] r1_out;
wire [127:0] keyout1;

wire [127:0]mux_input_data,mux_input_key;

sdrr_module sr1(r1_out,rnddata,r0_out, clk,clk_2f);

assign mux_input_data = (!(rn[3]|rn[2]|rn[1]|rn[0]))?(datain^key):r0_out;
assign mux_input_key = (!(rn[3]|rn[2]|rn[1]|rn[0]))?key:keyin;


roundnum r1(rn,mux_input_data,mux_input_key,keyout1,r1_out,clk,clk_2f,rnddata);
rounndnum_l r10(4'b1001,r0_out,keyin,dataout,clk);  


always @(posedge clk)
    begin
      //  r0_out <=  r1_out;
        keyin  <=  keyout1;
       // $display()
    end 

endmodule








//initial
//    begin
//        r0_out=datain^key;
//        keyin=key;
//    end
    

