`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: clk_dac
// Description: DAC clock generation for 3PD5651E
//              Uses ODDR to output clock on FPGA pin (low jitter)
//////////////////////////////////////////////////////////////////////////////////

module clk_dac(
    input clk_in1,      // 125MHz input
    output clk_out1,    // DAC1 clock
    output clk_out2,    // DAC2 clock
    output clk_out1_buf // DAC1 clock for ILA debug (through BUFG)
    );

    wire dac_clk1_oddr;

    // Use ODDR to route clock to output pin (proper clock distribution)
    ODDR #(
        .DDR_CLK_EDGE("SAME_EDGE")
    ) u_dac_clk1_oddr (
        .Q(dac_clk1_oddr),
        .C(clk_in1),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .R(1'b0),
        .S(1'b0)
    );

    assign clk_out1 = dac_clk1_oddr;

    // BUFG for ILA debug (allows fabric routing)
    BUFG u_dbg_bufg (
        .I(dac_clk1_oddr),
        .O(clk_out1_buf)
    );

    ODDR #(
        .DDR_CLK_EDGE("SAME_EDGE")
    ) u_dac_clk2_oddr (
        .Q(clk_out2),
        .C(clk_in1),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .R(1'b0),
        .S(1'b0)
    );

endmodule
