`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2022 11:16:23 AM
// Design Name: 
// Module Name: allgates_df
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


module allgates_df(y_or,y_and,y_not,y_nor,y_nand,y_xor,y_xnor,a,b);
output y_or,y_and,y_not,y_nor,y_nand,y_xor,y_xnor;
input a,b;
assign y_or=a|b;
assign y_and=a&b;
assign y_not=~(a);
assign y_nor=~(a|b);
assign y_nand=~(a&b);
assign y_xor=a^b;
assign y_xnor=~(a^b);
endmodule
