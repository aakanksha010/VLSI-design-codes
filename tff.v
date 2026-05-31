`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2025 11:22:37 PM
// Design Name: 
// Module Name: tff
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


module tff(t,q,qb,clk);
input t,clk;
output q,qb;
reg q,qb;
initial q=0;

always @ (posedge clk)begin
    if (t==1)
        q=~q;
        else
            q=q;
    end
    assign qb = ~q;
endmodule
