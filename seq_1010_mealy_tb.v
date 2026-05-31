`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2025 12:54:52 PM
// Design Name: 
// Module Name: seq_1010_mealy_tb
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


module seq_1010_mealy_tb();

reg clk,reset,data_in;
wire y_out;


seq_1010_mealy sqm1 (.clk(clk),
                     .reset(reset),
                     .data_in(data_in),
                     .y_out(y_out));

initial clk = 0;
initial reset = 1;
initial data_in = 1;
always #5 clk = ~clk;
always #10 data_in = ~data_in;
initial
begin
#10 reset = 0;
#200;
$finish;
end
endmodule
