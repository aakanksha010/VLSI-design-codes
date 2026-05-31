`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2025 11:37:45 PM
// Design Name: 
// Module Name: tff_tb
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


module tff_tb;
reg t, clk;
wire q,qb;
    tff out (.t(t),.clk(clk),.q(q),.qb(qb));
    initial begin
        clk = 0;
    forever #2 clk=~clk;
    end
initial begin
    t=0;
    #2
    t=1;
    #2
    t=1;
    #5
    t=0;
    #5
    t=1;
    #5
end
endmodule
