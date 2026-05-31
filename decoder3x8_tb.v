`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2025 02:27:00 PM
// Design Name: 
// Module Name: decoder3x8_tb
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


module decoder3x8_tb();

reg en;
reg [2:0]x;
wire [7:0]y;

decoder3x8 de3(.x(x),
               .en(en),
               .y(y));

initial
begin
x = 3'b000;en = 1'b0;
//#10;
//en = 1'b1;
//#10;
#10 x = 3'b000;en = 1'b1;
#10 x = 3'b001;en = 1'b1;
#10 x = 3'b010;en = 1'b1;
#10 x = 3'b011;en = 1'b1;
#10 x = 3'b100;en = 1'b1;
#10 x = 3'b101;en = 1'b1;
#10 x = 3'b110;en = 1'b1;
#10 x = 3'b111;en = 1'b1;
#20;
$finish;
end
endmodule
