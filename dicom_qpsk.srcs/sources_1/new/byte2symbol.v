`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: byte2symbol
// Description: Convert 8-bit UDP data to 2-bit QPSK symbols
//              1 byte = 4 symbols, LSB first
//              Output symbol_valid = 0 when no data (for clean spectrum)
//
// Timing:
//   Input rate:  6.25MHz / 4 = 1.5625 MHz (byte rate)
//   Output rate: 6.25 MHz (symbol rate)
//
// Parameters:
//   BIT_ORDER: 0=LSB first (default), 1=MSB first
//////////////////////////////////////////////////////////////////////////////////

module byte2symbol #(
    parameter BIT_ORDER = 0     // 0=LSB first, 1=MSB first
)(
    input             clk,          // 6.25MHz symbol clock
    input             rst_n,        // Active low reset

    // Input: 8-bit data from UDP FIFO
    input      [7:0]  din,          // Input byte
    input             din_valid,    // Input valid (FIFO not empty)
    input             pkt_done,     // Packet done (flush remaining)

    // Output: 2-bit symbol for QPSK
    output reg [1:0]  symbol_out,   // 2-bit symbol
    output reg        symbol_valid  // Symbol valid (0 when no data)
);

    //========================================================================
    // Internal registers
    //========================================================================
    reg [7:0]  shift_reg;       // Shift register to hold byte
    reg [2:0]  sym_cnt;         // Symbol counter (0-3 for 4 symbols)
    reg        busy;            // Currently outputting symbols

    //========================================================================
    // Symbol extraction logic
    //========================================================================
    wire [1:0] sym_bit0;        // Symbol from bits[1:0]
    wire [1:0] sym_bit1;        // Symbol from bits[3:2]
    wire [1:0] sym_bit2;        // Symbol from bits[5:4]
    wire [1:0] sym_bit3;        // Symbol from bits[7:6]

    assign sym_bit0 = shift_reg[1:0];
    assign sym_bit1 = shift_reg[3:2];
    assign sym_bit2 = shift_reg[5:4];
    assign sym_bit3 = shift_reg[7:6];

    //========================================================================
    // Main state machine
    //========================================================================
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            shift_reg    <= 8'd0;
            sym_cnt      <= 3'd0;
            busy         <= 1'b0;
            symbol_out   <= 2'b00;
            symbol_valid <= 1'b0;
        end else begin
            // Default: invalid unless in output cycles
            symbol_valid <= 1'b0;

            if (!busy) begin
                // Idle state: wait for new data
                if (din_valid) begin
                    // Load new byte and start output
                    shift_reg    <= din;
                    busy         <= 1'b1;
                    sym_cnt      <= 3'd0;

                    // Output first symbol immediately
                    if (BIT_ORDER == 0) begin
                        // LSB first: output bits[1:0]
                        symbol_out   <= din[1:0];
                    end else begin
                        // MSB first: output bits[7:6]
                        symbol_out   <= din[7:6];
                    end
                    symbol_valid <= 1'b1;
                end
            end else begin
                // Busy: outputting symbols from current byte
                sym_cnt <= sym_cnt + 1'b1;

                case (sym_cnt)
                    3'd0: begin
                        // Second symbol
                        if (BIT_ORDER == 0) begin
                            symbol_out <= sym_bit1;  // bits[3:2]
                        end else begin
                            symbol_out <= sym_bit2;  // bits[5:4]
                        end
                        symbol_valid <= 1'b1;
                    end

                    3'd1: begin
                        // Third symbol
                        if (BIT_ORDER == 0) begin
                            symbol_out <= sym_bit2;  // bits[5:4]
                        end else begin
                            symbol_out <= sym_bit1;  // bits[3:2]
                        end
                        symbol_valid <= 1'b1;
                    end

                    3'd2: begin
                        // Fourth symbol
                        if (BIT_ORDER == 0) begin
                            symbol_out <= sym_bit3;  // bits[7:6]
                        end else begin
                            symbol_out <= sym_bit0;  // bits[1:0]
                        end
                        symbol_valid <= 1'b1;
                    end

                    3'd3: begin
                        // Finished 4 symbols, check for next byte
                        if (din_valid) begin
                            // Next byte ready, load and continue
                            shift_reg  <= din;
                            sym_cnt    <= 3'd0;

                            // Output first symbol of new byte
                            if (BIT_ORDER == 0) begin
                                symbol_out <= din[1:0];
                            end else begin
                                symbol_out <= din[7:6];
                            end
                            symbol_valid <= 1'b1;
                        end else begin
                            // No more data, go idle
                            busy <= 1'b0;
                        end
                    end

                    default: begin
                        busy <= 1'b0;
                    end
                endcase
            end

            // Packet done handling: flush and go idle
            if (pkt_done) begin
                busy         <= 1'b0;
                symbol_valid <= 1'b0;
            end
        end
    end

endmodule
