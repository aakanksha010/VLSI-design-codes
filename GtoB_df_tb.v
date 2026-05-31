`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2022 06:32:21 AM
// Design Name: 
// Module Name: GtoB_df_tb
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


module GtoB_df_tb();
reg [3:0]G;
wire[3:0]B;
GtoB_df b1(B,G);
initial
begin
G=4'h0;
#10 G=4'h1;
#10 G=4'h2;
#10 G=4'h3;
#10 G=4'h4;
#10 G=4'h5;
#10 G=4'h6;
#10 G=4'h7;
#10 G=4'h8;
#10 G=4'h9;
#10 G=4'hA;
#10 G=4'hB;
#10 G=4'hC;
#10 G=4'hD;
#10 G=4'hE;
#10 G=4'hF;
#10 $stop;
end
endmodule
