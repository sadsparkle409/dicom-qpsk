`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: clk_dac
// Description: DAC clock generation for 3PD5651E
//              Output clock = ~input_clock (inverted, same frequency)
//              Reference: 002_hs_dual_da project
//////////////////////////////////////////////////////////////////////////////////

module clk_dac(
    input clk_in1,      // 125MHz input
    output clk_out1,    // DAC1 clock (inverted)
    output clk_out2     // DAC2 clock (inverted)
    );

    // Simply invert the clock, same as reference project
    // DAC reads data on the falling edge of da_clk
    assign clk_out1 = ~clk_in1;
    assign clk_out2 = ~clk_in1;

endmodule
