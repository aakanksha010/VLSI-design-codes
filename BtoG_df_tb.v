`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2022 05:53:45 AM
// Design Name: 
// Module Name: BtoG_df_tb
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


module BtoG_df_tb();
reg [3:0]B;
wire[3:0]G;
BtoG_df a1(G,B);
initial
begin
B=4'h0;
#10 B=4'h1;
#10 B=4'h2;
#10 B=4'h3;
#10 B=4'h4;
#10 B=4'h5;
#10 B=4'h6;
#10 B=4'h7;
#10 B=4'h8;
#10 B=4'h9;
#10 B=4'hA;
#10 B=4'hB;
#10 B=4'hC;
#10 B=4'hD;
#10 B=4'hE;
#10 B=4'hF;
#10 $stop;
end
endmodule


