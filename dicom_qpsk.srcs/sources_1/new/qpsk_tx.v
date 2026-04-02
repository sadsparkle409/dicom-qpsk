`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: qpsk_tx
// Description: QPSK Transmitter with clean spectrum control
//              - DDS runs continuously (no phase jump)
//              - Baseband gating: I=Q=0 when no valid symbol
//              - RRC pulse shaping, 12.5MHz IF output
//
// Parameters:
//   12.5MHz IF, 6.25MHz symbol rate, 125MHz DAC sample rate
//////////////////////////////////////////////////////////////////////////////////

module qpsk_tx(
    input        clk_in1,          // 125MHz clock
    input        resetn,
    input  [1:0] symbols,          // QPSK symbols from byte2symbol
    input        symbol_valid,     // Symbol valid (0 when no data)
    output [9:0] da_data_o1,       // DAC1: IF output (modulated)
    output [9:0] da_data_o2        // DAC2: I baseband (for debug)
    );

    //========================================================================
    // QPSK Gray Code Mapping
    //========================================================================
    // Maps 2-bit symbols to constellation points:
    //   00 -> (+127, +127)  Quadrant I
    //   01 -> (-127, +127)  Quadrant II
    //   11 -> (-127, -127)  Quadrant III
    //   10 -> (+127, -127)  Quadrant IV
    //========================================================================
    wire signed [7:0] i_base_raw, q_base_raw;

    assign i_base_raw = (symbols[1] == 1'b0) ? 8'sd127 : -8'sd127;
    assign q_base_raw = (symbols[0] == symbols[1]) ? 8'sd127 : -8'sd127;

    //========================================================================
    // Baseband Gating: Force I=Q=0 when no valid symbol
    // This ensures clean spectrum (no carrier leakage) when no data
    //========================================================================
    wire signed [7:0] i_base, q_base;
    assign i_base = symbol_valid ? i_base_raw : 8'sd0;
    assign q_base = symbol_valid ? q_base_raw : 8'sd0;

    //========================================================================
    // RRC Pulse Shaping (20x oversampling)
    //========================================================================
    // Generate tvalid for RRC (one pulse every 20 cycles)
    reg [4:0] valid_cnt;
    reg       tvalid;

    always @(posedge clk_in1 or negedge resetn) begin
        if (!resetn) begin
            valid_cnt <= 0;
            tvalid    <= 0;
        end else begin
            tvalid <= 0;

            if (valid_cnt == 19)
                valid_cnt <= 0;
            else
                valid_cnt <= valid_cnt + 1'b1;

            // Only sample once at the start of each 20-cycle window
            if (valid_cnt == 0)
                tvalid <= 1'b1;
        end
    end

    wire signed [15:0] i_rrc, q_rrc;

    fir_rrc u_fir_rrc_i (
        .aclk(clk_in1),
        .s_axis_data_tvalid(tvalid),
        .s_axis_data_tready(),
        .s_axis_data_tdata(i_base),
        .m_axis_data_tvalid(),
        .m_axis_data_tdata(i_rrc)
    );

    fir_rrc u_fir_rrc_q (
        .aclk(clk_in1),
        .s_axis_data_tvalid(tvalid),
        .s_axis_data_tready(),
        .s_axis_data_tdata(q_base),
        .m_axis_data_tvalid(),
        .m_axis_data_tdata(q_rrc)
    );

    //========================================================================
    // DDS: Continuous 12.5MHz carrier (always running for phase continuity)
    //========================================================================
    wire [31:0] dds_data;
    wire signed [9:0] cos, sin;

    // DDS output format: [31:0] = {sin[15:0], cos[15:0]}
    // Take upper 10 bits
    assign cos = dds_data[9:0];
    assign sin = dds_data[25:16];

    dds_compiler_0 u_dds_compiler (
        .aclk(clk_in1),
        .m_axis_data_tdata(dds_data),
        .m_axis_data_tvalid(),
        .m_axis_data_tready(1'b1),
        .m_axis_phase_tdata(),
        .m_axis_phase_tvalid(),
        .m_axis_phase_tready(1'b1)
    );

    //========================================================================
    // Complex Mixing: I*cos - Q*sin
    // When i_rrc=q_rrc=0 (no data), output is naturally 0
    //========================================================================
    wire signed [25:0] i_mix, q_mix;
    wire signed [25:0] if_temp;

    // I * cos
    mult_gen_0 u_mult_i (
        .CLK(clk_in1),
        .A(i_rrc),
        .B(cos),
        .P(i_mix)
    );

    // Q * sin
    mult_gen_0 u_mult_q (
        .CLK(clk_in1),
        .A(q_rrc),
        .B(sin),
        .P(q_mix)
    );

    // IF = I*cos - Q*sin
    assign if_temp = i_mix - q_mix;

    //========================================================================
    // Output Formatting
    // Signed to unsigned: -512~511 -> 0~1023
    // When no data: if_temp=0 -> if_out_raw=512 (mid-scale = 0V)
    //========================================================================
    wire [9:0] if_out_raw, i_out_raw;
    assign if_out_raw = if_temp[24:15] + 10'd512;  // IF signal
    assign i_out_raw  = i_mix[24:15] + 10'd512;     // I baseband for debug

    assign da_data_o1 = if_out_raw;
    assign da_data_o2 = i_out_raw;

endmodule
