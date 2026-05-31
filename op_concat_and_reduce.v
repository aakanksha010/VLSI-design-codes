`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2025 05:14:11 PM
// Design Name: 
// Module Name: op_concat_and_reduce
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


module op_concat_and_reduce(a,b,y,z);
input [3:0]a,b;
output [15:0] y;
output [7:0] z;

parameter c = 3'b010;

reg [15:0] y;
reg [7:0] z;

always @(a or b)
  begin
    y = {a,b,{3{c}},3'b111};
    z[0] = &a;
    z[1] = ~&a;
    z[2] = |a;
    z[3] = ~|a;
    z[4] = ^a;
    z[5] = ~^a;
    z[6] = 1'b0;
    z[7] = 1'b0; 
  $display("y = %b",y);
  //$display ("z = %b",z);
  end
endmodule
