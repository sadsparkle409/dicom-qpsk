`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:     USST
// Engineer:    Tang Pengcheng
//
// Create Date: 2026/03/26 02:05:22
// Design Name:
// Module Name: qpsk_mapper
// Project Name:
// Target Devices:
// Tool Versions:
// Description: Perform QPSK mapping on the input 2-bit symbols
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module qpsk_mapper(
    input [1:0] sym_in,
    output signed [7:0] i_out,
    output signed [7:0] q_out
    );

    // QPSK Gray code mapping
    // 00 -> (+1, +1)
    // 01 -> (-1, +1)
    // 11 -> (-1, -1)
    // 10 -> (+1, -1)

    reg signed [7:0]i_tem, q_tem;
    assign i_out = i_tem;
    assign q_out = q_tem;

    always @(*) begin
        case(sym_in)
            2'b00:    begin i_tem = 8'd127;   q_tem = 8'd127;     end
            2'b01:    begin i_tem = -8'd127;   q_tem = 8'd127;    end
            2'b11:    begin i_tem = -8'd127;  q_tem = -8'd127;    end
            2'b10:    begin i_tem = 8'd127;  q_tem = -8'd127;     end
            default:  begin i_tem = 8'd0;     q_tem = 8'd0;       end
        endcase
    end

endmodule
