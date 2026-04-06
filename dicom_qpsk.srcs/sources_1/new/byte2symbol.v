`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: byte2symbol
// Description: Convert 8-bit UDP data to 2-bit QPSK symbols
//              1 byte = 4 symbols, LSB first
//              Output 0 symbol when FIFO empty (clean spectrum, RRC continuous)
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
    input             pkt_done,     // Packet done (for flush, optional)

    // Output: 2-bit symbol for QPSK
    output reg [1:0]  symbol_out,   // 2-bit symbol
    output reg        symbol_valid, // 1=valid data, 0=idle (FIFO empty)
    output            fifo_rd_req   // FIFO read request (for next byte pre-fetch)
);

    //========================================================================
    // Internal registers
    //========================================================================
    reg [7:0]  shift_reg;       // Shift register to hold byte
    reg [2:0]  sym_cnt;         // Symbol counter (0-3 for 4 symbols)
    reg        busy;            // Currently outputting symbols

    //========================================================================
    // FIFO read request - Request next byte when processing last symbol
    // This enables pre-fetch for continuous symbol output without gap
    //========================================================================
    assign fifo_rd_req = busy && (sym_cnt == 3'd3) && din_valid;

    //========================================================================
    // Main state machine - Output valid when busy, invalid when idle
    //========================================================================
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            shift_reg    <= 8'd0;
            sym_cnt      <= 3'd0;
            busy         <= 1'b0;
            symbol_out   <= 2'b00;
            symbol_valid <= 1'b0;
        end else begin
            symbol_valid <= 1'b0;  // Default: invalid

            if (!busy) begin
                // Idle state: wait for new data
                if (din_valid) begin
                    // Load new byte and start output
                    shift_reg    <= din;
                    busy         <= 1'b1;
                    sym_cnt      <= 3'd0;

                    // Output first symbol immediately
                    symbol_out   <= (BIT_ORDER == 0) ? din[1:0] : din[7:6];
                    symbol_valid <= 1'b1;
                end
            end else begin
                // Busy: outputting symbols from current byte
                sym_cnt <= sym_cnt + 1'b1;

                case (sym_cnt)
                    3'd0: begin
                        symbol_out   <= (BIT_ORDER == 0) ? shift_reg[3:2] : shift_reg[5:4];
                        symbol_valid <= 1'b1;
                    end
                    3'd1: begin
                        symbol_out   <= (BIT_ORDER == 0) ? shift_reg[5:4] : shift_reg[3:2];
                        symbol_valid <= 1'b1;
                    end
                    3'd2: begin
                        symbol_out   <= (BIT_ORDER == 0) ? shift_reg[7:6] : shift_reg[1:0];
                        symbol_valid <= 1'b1;
                    end
                    3'd3: begin
                        // Finished 4 symbols, check for next byte
                        if (din_valid) begin
                            // Next byte ready, load and continue
                            shift_reg  <= din;
                            sym_cnt    <= 3'd0;
                            symbol_out <= (BIT_ORDER == 0) ? din[1:0] : din[7:6];
                            symbol_valid <= 1'b1;
                        end else begin
                            // No more data, go idle
                            busy <= 1'b0;
                        end
                    end
                    default: busy <= 1'b0;
                endcase
            end
        end
    end

endmodule
