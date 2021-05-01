/*module pseudo_random(input clk,output wire [7:0] memwire);
    
    reg [7:0]mem;
  //  output wire [7:0]memwire;
    assign memwire=mem;
    initial
        begin
            mem=8'b01100011;
        end
     
    always @(posedge clk)
        begin
            mem[7]<=mem[7]^mem[5]^mem[4]^mem[0];
            mem[6]<=mem[7];
            mem[5]<=mem[6];
            mem[4]<=mem[5];
            mem[3]<=mem[4];
            mem[2]<=mem[3];
            mem[1]<=mem[2];
            mem[0]<=mem[1];
 %       end              
%endmodule
*/
module pseudo_random(input clk,input bool_datain, input wire [127:0] datain,output wire [127:0] memwire);
    
    reg [127:0]mem;
    assign memwire=mem;    
     
    always @(posedge clk )
        begin
        if(bool_datain)
        begin
            mem<=datain;
        end
        else
        begin
         mem[127]<=mem[127]^mem[125]^mem[100]^mem[98];
         mem[126:0]<=mem[127:1];
         end
        end              
endmodule
