`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: qpsk_tx
// Description: QPSK Transmitter - Simplified Version
//              - DDS runs continuously
//              - RRC always running (tvalid every 20 cycles)
//              - Baseband zero when no data (natural gating via RRC)
//
// Parameters:
//   12.5MHz IF, 6.25MHz symbol rate, 125MHz DAC sample rate
//////////////////////////////////////////////////////////////////////////////////

module qpsk_tx(
    input        clk_in1,          // 125MHz clock
    input        resetn,
    input  [1:0] symbols,          // QPSK symbols from the active symbol source
    input        symbol_valid,     // High for active symbols, low for idle gating
    output [9:0] da_data_o1,       // DAC1: IF output (modulated)
    output [9:0] da_data_o2        // DAC2: I baseband (for debug)
    );

    //========================================================================
    // QPSK Gray Code Mapping
    //========================================================================
    wire signed [7:0] i_base_raw, q_base_raw;

    qpsk_mapper u_qpsk_mapper(
        .sym_in(symbols),
        .i_out(i_base_raw),
        .q_out(q_base_raw)
    );

    //========================================================================
    // Baseband Gating: Force I=Q=0 when no valid symbol
    // This ensures clean spectrum (no carrier leakage) when no data
    // Note: symbol_valid=0 when FIFO empty, RRC input=0 creates natural decay
    //========================================================================
    wire signed [7:0] i_base = symbol_valid ? i_base_raw : 8'sd0;
    wire signed [7:0] q_base = symbol_valid ? q_base_raw : 8'sd0;

    //========================================================================
    // RRC Pulse Shaping (20x oversampling)
    // Generate tvalid every 20 cycles - independent of symbol_valid
    //========================================================================
    reg [4:0] valid_cnt;
    reg       tvalid;

    always @(posedge clk_in1 or negedge resetn) begin
        if (!resetn) begin
            valid_cnt <= 0;
            tvalid    <= 0;
        end else begin
            // Generate tvalid every 20 cycles at symbol rate
            if (valid_cnt == 19)
                valid_cnt <= 0;
            else
                valid_cnt <= valid_cnt + 1'b1;

            tvalid <= (valid_cnt == 0);
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
    // DDS: Continuous 12.5MHz carrier
    //========================================================================
    wire [31:0] dds_data;
    wire signed [11:0] cos, sin;

    // DDS output format: [31:0] = {sin[15:0], cos[15:0]}
    assign cos = dds_data[11:0];
    assign sin = dds_data[27:16];

    dds_compiler_0 u_dds_compiler (
        .aclk(clk_in1),
        .m_axis_data_tdata(dds_data),
        .m_axis_data_tvalid(),
        .m_axis_phase_tdata(),
        .m_axis_phase_tvalid()
    );

    //========================================================================
    // Complex Mixing: I*cos - Q*sin
    // When i_rrc=q_rrc=0 (no data), output is naturally 0
    //========================================================================
    wire signed [27:0] i_mix, q_mix;
    wire signed [27:0] if_temp;

    mult_gen_0 u_mult_i (
        .CLK(clk_in1),
        .A(i_rrc),
        .B(cos),
        .P(i_mix)
    );

    mult_gen_0 u_mult_q (
        .CLK(clk_in1),
        .A(q_rrc),
        .B(sin),
        .P(q_mix)
    );

    // IF = I*cos - Q*sin
    assign if_temp = i_mix - q_mix;

    //========================================================================
    // Output Formatting - Simplified, no complex gating
    // Signed to unsigned: -512~511 -> 0~1023
    //========================================================================
    wire [9:0] if_out_raw, i_out_raw;
    assign if_out_raw = if_temp[27:18] + 10'd512;
    assign i_out_raw  = i_mix[27:18] + 10'd512;

    assign da_data_o1 = if_out_raw;
    assign da_data_o2 = i_out_raw;

endmodule
