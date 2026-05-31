`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2025 05:29:04 PM
// Design Name: 
// Module Name: block_unblock
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


module block_unblock(output reg x, output reg y);

initial
begin
//x <= 0;
x = 0;
//y <= ~x;
y = ~x;
$display ("y = %b",y);
end
endmodule
