`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: qpsk_tx_test
// Description: Test version - output DDS carrier directly to verify 12.5MHz
//////////////////////////////////////////////////////////////////////////////////

module qpsk_tx_test(
    input        clk_in1,          // 125MHz clock
    input        resetn,
    input  [1:0] symbols,          // Ignored in test mode
    input        symbol_valid,     // Ignored in test mode
    output [9:0] da_data_o1,       // DDS cosine output (should be 12.5MHz)
    output [9:0] da_data_o2        // DDS sine output
    );

    //========================================================================
    // DDS: Continuous 12.5MHz carrier
    //========================================================================
    wire [31:0] dds_data;
    wire signed [9:0] cos, sin;

    // DDS output format check - try different bit slices
    // According to DDS datasheet: {sin, cos} or {cos, sin}
    // Let's try both interpretations
    assign cos = dds_data[9:0];      // Lower 10 bits
    assign sin = dds_data[25:16];    // Upper 10 bits of lower 16

    dds_compiler_0 u_dds_compiler (
        .aclk(clk_in1),
        .m_axis_data_tdata(dds_data),
        .m_axis_data_tvalid(),
        .m_axis_phase_tdata(),
        .m_axis_phase_tvalid()
    );

    // Output DDS directly (no modulation) for frequency verification
    assign da_data_o1 = cos + 10'd512;  // Convert signed to unsigned
    assign da_data_o2 = sin + 10'd512;

endmodule
