`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2025 03:03:32 PM
// Design Name: 
// Module Name: decoder2x4_activelow
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


module decoder2x4_activelow(en,sel,y,z);

input en;
input [1:0]sel;
output [3:0]y;
output [3:0]z;

reg [3:0]y;
reg [3:0]z;

always @(en or sel)
begin
  if (~en)
    case (sel)
      2'b00 : z = 4'b1000;
      2'b01 : z = 4'b0100;
      2'b10 : z = 4'b0010;
      2'b11 : z = 4'b0001;
    endcase
  
  else
    z = 4'b0000;
end 

always @(en or sel)
begin
assign y[3] = (~en) && (~sel[0]) && (~sel[1]);
assign y[2] = (~en) && (~sel[0]) && (sel[1]);
assign y[1] = (~en) && (sel[0]) && (~sel[1]);
assign y[0] = (~en) && (sel[0]) && (sel[1]); 
end  
endmodule
