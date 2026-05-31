`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2022 12:49:45 PM
// Design Name: 
// Module Name: nor_bh
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


module nor_bh(y,a,b);
output y;
input a,b;
reg y;
always @(a,b)
begin
case({a,b})
2'b00:y=1'b1;
2'b01:y=1'b0;
2'b10:y=1'b0;
2'b11:y=1'b0;
endcase
end
endmodule
