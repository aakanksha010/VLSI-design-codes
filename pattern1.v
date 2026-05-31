`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2025 04:08:48 PM
// Design Name: 
// Module Name: pattern1
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


module pattern1();
integer i, j;

    initial begin
        for (i = 1; i <= 5; i = i + 1) begin
            for (j = 1; j <= i; j = j + 1) begin
                $display("*");
            end
            $display("\n");
        end
    end
endmodule
