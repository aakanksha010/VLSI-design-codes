`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2025 02:50:49 PM
// Design Name: 
// Module Name: tristate_tb
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


module tristate_tb();
reg data_in;
reg enable; 

wire data_out;

tristate tr1 (.data_in(data_in),
              .enable(enable),
              .data_out(data_out));

initial
begin
data_in = 4'b0000;
enable = 1'b0;
#10
{data_in,enable} = 5'b00011;
#10 
{data_in,enable} = 5'b00110;
#20
$finish;

end
endmodule
