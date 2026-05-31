`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2023 07:21:38 PM
// Design Name: 
// Module Name: demux1x2_bh
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


module demux1x2_bh(y,s,d);
output reg [1:0]y;
input s,d;
always@(s,d)
begin
case({s})
1'b0:y[0]=d;
1'b1:y[1]=d;
endcase
end
endmodule
