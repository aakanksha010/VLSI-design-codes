`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2025 03:27:35 PM
// Design Name: 
// Module Name: piso
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


module piso_crap0#(
    parameter WIDTH = 8
)(
    input wire clk,
    input wire reset,
    input wire [WIDTH-1:0] data_in,
    output reg serial_out
);

    // State encoding
    parameter IDLE = 2'b00,
              LOAD = 2'b01,
              SHIFT = 2'b10;

    reg [1:0] state, next_state;
    reg [WIDTH-1:0] data_valid;
    reg [2:0] count;
    reg load_en, shift_en;

    // Next state logic
    always @(*) begin
        case (state)
            IDLE:  next_state = (data_in != 0) ? LOAD : IDLE;
            LOAD:  next_state = SHIFT;
            SHIFT: next_state = (count == (WIDTH - 1)) ? ((data_in != 0) ? LOAD : IDLE) : SHIFT;
            default: next_state = IDLE;
        endcase
    end

    // State transitions and data handling
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state       <= IDLE;
            data_valid  <= 0;
            count       <= 0;
            serial_out  <= 0;
            load_en     <= 0;
            shift_en    <= 0;
        end else begin
            state <= next_state;
            case (next_state)
                IDLE: begin
                    load_en     <= 0;
                    shift_en    <= 0;
                    serial_out  <= 0;
                    count       <= 0;
                end
                LOAD: begin
                    load_en     <= 1;
                    shift_en    <= 0;
                    data_valid  <= data_in;
                    count       <= 0;
                end
                SHIFT: begin
                    load_en     <= 0;
                    shift_en    <= 1;

                    serial_out  <= data_valid[0];
                    data_valid  <= data_valid >> 1;
                    count       <= count + 1;

                    // Clear register after last shift
                    if (count == (WIDTH - 1)) begin
                        data_valid <= 0;
                        count <= 0;
                        shift_en <= 0;
                    end

                    // Debug info
                    $display("At %0t ns: SHIFT - serial_out = %b, data_valid = %b, count = %0d",
                              $time, serial_out, data_valid, count);
                end
            endcase
        end
    end             
endmodule
