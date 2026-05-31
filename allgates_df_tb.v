`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2022 11:29:28 AM
// Design Name: 
// Module Name: allgates_df_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module allgates_df_tb();
reg a,b;
wire y_or,y_and,y_not,y_nor,y_nand,y_xor,y_xnor;
allgates_df k1(y_or,y_and,y_not,y_nor,y_nand,y_xor,y_xnor,a,b);
initial
begin 
a<=1'b0;b<=1'b0;
#10 a<=1'b0;b<=1'b1;
#10 a<=1'b1;b<=1'b0;
#10 a<=1'b1;b<=1'b1;
#10 $stop;
end
endmodule
