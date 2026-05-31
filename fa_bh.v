`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 11:11:37 AM
// Design Name: 
// Module Name: fa_bh
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


module fa_bh(s,c,a,b,d);
output reg s,c;
input a,b,d;
//reg s,c;
always @(a,b,d)
begin
case({a,b,d})
3'b000:{s,c}=2'b00;
3'b001:{s,c}=2'b10;
3'b010:{s,c}=2'b10;
3'b011:{s,c}=2'b01;
3'b100:{s,c}=2'b10;
3'b101:{s,c}=2'b01;
3'b110:{s,c}=2'b01;
3'b111:{s,c}=2'b11;
endcase
end
endmodule
