`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2025 12:03:56 PM
// Design Name: 
// Module Name: dlatch_neg_and_pos_tb
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


module dlatch_neg_and_pos_tb();

reg d,le;

dlatch_neg_and_pos dl1(.d(d),.le(le),.q(q));

initial
begin
d = 1'b0; le = 1'b0;
#10 d = 1'b1; le = 1'b0;
#10 d = 1'b0; le = 1'b0;
#10 d = 1'b1; le = 1'b1;
#10 d = 1'b0; le = 1'b1;
#10 d = 1'b1; le = 1'b1;
#20;
$finish;
end
endmodule
