`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2025 12:41:28 PM
// Design Name: 
// Module Name: mux4x1_w_2x1_tb
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


module mux4x1_w_2x1_tb();

reg a,b,c,d;
reg [1:0] sel;
wire y1,y2,y;

 mux4x1_w_2x1 mut1(.a(a),
              .b(b),
              .c(c),
              .d(d),
              .sel(sel),
              .y1(y1),
              .y2(y2),
              .y(y));
              
initial
begin
a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0; sel = 2'b00;
#10 a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0; sel = 2'b01;
#10 a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b1; sel = 2'b10;
#10 a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b0; sel = 2'b11;
#10 a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b1; sel = 2'b00;
#10 a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b0; sel = 2'b01;
#10 a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b1; sel = 2'b10;
#10 a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b0; sel = 2'b11;
#10 a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b1; sel = 2'b00;
#10 a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b0; sel = 2'b01;
#10 a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b1; sel = 2'b10;
#10 a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0; sel = 2'b11;
#10 a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b1; sel = 2'b00;
#10 a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b0; sel = 2'b01;
#10 a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b1; sel = 2'b10;
#10 a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b0; sel = 2'b11;
#10 a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b1; sel = 2'b00;

#20;
$finish;
end
endmodule
