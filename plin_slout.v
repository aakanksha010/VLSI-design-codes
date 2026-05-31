`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2025 10:36:11 PM
// Design Name: 
// Module Name: plin_slout
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


module plin_slout(
    input wire clk,
    input wire reset,
    //input wire load,                  // Load control signal
    input wire [7:0] data_in,         // Parallel data input
    output reg serial_out             // Serial data output
);

    reg [7:0] shift_reg;
    reg [3:0] count;             // Internal shift register

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            shift_reg  <= 8'b0;
            serial_out <= 1'b0;
            count <= 3'b0;
        end else begin
            /*if (load) begin
                shift_reg <= data_in;         // Load parallel data
            end else begin*/
                serial_out <= shift_reg[0];   // Output LSB first
                shift_reg <= shift_reg >> 1;  // Shift right
                if(count < 8)
                  count = count + 1;
                else 
                  count = 3'b0;
            end
        end
    //end
endmodule
