`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: data_gen
// Description: QPSK Test Pattern Generator
//              Generates 00 -> 01 -> 11 -> 10 sequence for QPSK verification
//              Symbol rate: 6.25MHz
//////////////////////////////////////////////////////////////////////////////////

module data_gen(
    input        clk,              // 6.25MHz symbol clock
    input        rst_n,
    input        enable,           // Start generating when enabled
    output reg [1:0] symbol_out,   // 2-bit QPSK symbol
    output reg   symbol_valid      // Symbol valid
    );

    //========================================================================
    // Symbol sequence generator
    // Sequence: 00 -> 01 -> 11 -> 10 -> 00 ...
    // This cycles through all 4 QPSK constellation points
    //========================================================================
    reg [1:0] sym_cnt;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sym_cnt     <= 2'b00;
            symbol_out  <= 2'b00;
            symbol_valid <= 1'b0;
        end else begin
            if (enable) begin
                symbol_valid <= 1'b1;
                symbol_out   <= sym_cnt;

                // Cycle through 00, 01, 11, 10
                case (sym_cnt)
                    2'b00: sym_cnt <= 2'b01;
                    2'b01: sym_cnt <= 2'b10;
                    2'b10: sym_cnt <= 2'b11;
                    2'b11: sym_cnt <= 2'b00;
                    default: sym_cnt <= 2'b00;
                endcase
            end else begin
                symbol_valid <= 1'b0;
                sym_cnt     <= 2'b00;
                symbol_out  <= 2'b00;
            end
        end
    end

endmodule
