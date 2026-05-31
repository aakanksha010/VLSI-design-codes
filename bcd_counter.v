`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2025 06:36:58 PM
// Design Name: 
// Module Name: bcd_counter
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


module bcd_counter(
    input clk,
    input reset,
    input UporDown,
    output [3:0]count
    );
reg [3:0]count;
    
always@ (posedge(clk) or posedge(reset))
begin
    if (reset==1)
        count <= 0;
    else if ( UporDown == 1)//Up counter is selected
        if(count == 9)
            count <= 0;
        else
            count <= count + 1;//Increment counter
    else
        if(count == 0)
            count <= 9;
        else
            count <= count - 1;//Decrement counter
end
endmodule
