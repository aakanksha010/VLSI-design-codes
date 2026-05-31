`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2022 05:54:04 AM
// Design Name: 
// Module Name: BtoG_bh
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


module BtoG_bh(G,B);
output reg  [3:0]G;
input [3:0]B;

always@(B)
begin
case({B})
4'h0:G=4'h0;
4'h1:G=4'h1;
4'h2:G=4'h3;
4'h3:G=4'h2;
4'h4:G=4'h6;
4'h5:G=4'h7;
4'h6:G=4'h5;
4'h7:G=4'h4;
4'h8:G=4'hC;
4'h9:G=4'hD;
4'hA:G=4'hF;
4'hB:G=4'hE;
4'hC:G=4'hA;
4'hD:G=4'hB;
4'hE:G=4'h9;
4'hF:G=4'h8;
endcase
end
endmodule
