`timescale 1ns / 1ps

module testbench();

wire [0:127] DATAOUT_FINAL_OUTPUT; 
reg [0:127]key=128'h000102030405060708090a0b0c0d0e0f;
reg [0:127] datain;

aes_decryption a1(
DATAOUT_FINAL_OUTPUT, key,datain);


initial
begin
$monitor("%h",DATAOUT_FINAL_OUTPUT);
datain=128'h00000000000000000000000000000;
#5;

datain=128'h4c73b75276f48c370a1f54137d07d72f;
#5;

datain=128'h350fb9cc687eb1ca035595def338cbee;
#5;

datain=128'hba0b22c7944c67bbb9371cf98ebc9105;
#5;

datain=128'h5538fd0b130114f96fc71feff7bddf22;
#5;


end
    
endmodule
