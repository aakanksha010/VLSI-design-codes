`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2022 06:32:42 AM
// Design Name: 
// Module Name: GtoB_bh
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


module GtoB_bh(B,G);
output reg  [3:0]B;
input [3:0]G;

always@(G)
begin
case({G})
4'h0:B=4'h0;
4'h1:B=4'h1;
4'h2:B=4'h3;
4'h3:B=4'h2;
4'h4:B=4'h7;
4'h5:B=4'h6;
4'h6:B=4'h4;
4'h7:B=4'h5;
4'h8:B=4'hF;
4'h9:B=4'hE;
4'hA:B=4'hC;
4'hB:B=4'hD;
4'hC:B=4'h8;
4'hD:B=4'h9;
4'hE:B=4'hB;
4'hF:B=4'hA;
endcase
end
endmodule
