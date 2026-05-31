`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2022 10:18:20 AM
// Design Name: 
// Module Name: ha_bh
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


module ha_bh(s,c,a,b);
output s,c;
input a,b;
reg s,c;
always @(a,b)
begin
case({a,b})
2'b00:{s,c}=1'b00;
2'b01:{s,c}=1'b10;
2'b10:{s,c}=1'b10;
2'b11:{s,c}=1'b01;
endcase
end
endmodule
