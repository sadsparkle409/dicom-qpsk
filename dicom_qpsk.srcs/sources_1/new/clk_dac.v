`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: clk_dac
// Description: DAC clock generation for 3PD5651E
//              Uses ODDR to output clock on FPGA pin (low jitter)
//////////////////////////////////////////////////////////////////////////////////

module clk_dac(
    input clk_in1,      // 125MHz input
    output clk_out1,    // DAC1 clock
    output clk_out2     // DAC2 clock
    );

    // Use ODDR to route clock to output pin (proper clock distribution)
    ODDR #(
        .DDR_CLK_EDGE("SAME_EDGE")
    ) u_dac_clk1_oddr (
        .Q(clk_out1),
        .C(clk_in1),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .R(1'b0),
        .S(1'b0)
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
