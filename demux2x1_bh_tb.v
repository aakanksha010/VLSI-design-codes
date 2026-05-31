`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2023 07:24:24 PM
// Design Name: 
// Module Name: demux2x1_bh_tb
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


module demux2x1_bh_tb();
reg s,d;
wire[1:0]y;
demux2x1_bh v3(y,s,d);
initial
begin
s<=1'b0;d<=1'b0;
#10 s<=1'b1;d<=1'b1;
#10 s<=1'b0;d<=1'b1;
#10 s<=1'b1;d<=1'b0;
#10 $stop;
end
endmodule
