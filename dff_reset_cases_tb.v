`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2025 12:32:48 PM
// Design Name: 
// Module Name: dff_reset_cases_tb
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


module dff_reset_cases_tb();

reg d,clk,reset;
wire q;

dff_reset_both dr1 (.d(d),
                    .clk(clk),
                    .reset(reset),
                    .q(q));
initial
begin
clk  = 0;
end
always #5 clk = ~clk;
initial
begin
reset = 1; d = 1;
#10 d = 0;
#10 d = 1;
#10;
$finish;
end
endmodule
