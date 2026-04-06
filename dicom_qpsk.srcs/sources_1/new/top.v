`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2026/03/28 18:55:54
// Design Name:
// Module Name: top
// Project Name:
// Target Devices:
// Tool Versions:
// Description: Top module with UDP to QPSK transmission
//              - Receives UDP data via Ethernet
//              - Converts to QPSK symbols
//              - Outputs 12.5MHz IF signal via DAC
//              - Clean spectrum when no data (DDS continuous, baseband gated)
//
// Dependencies:
//
// Revision:
// Revision 0.02 - Integrated QPSK transmission chain
//
//////////////////////////////////////////////////////////////////////////////////


module top(
    input clk,               // System_clock_in 50M
    input resetn,            // External reset

    //Ethernet RGMII Interface on the PL port
    input        eth_rx_clk , // RGMII receive clock（form PHY）
    input        eth_rx_ctl , // RGMII receives valid data signal
    input  [3:0] eth_rx_data, // The data received by RGMII
    output       eth_tx_clk , // RGMII send clock
    output       eth_tx_ctl , // RGMII transmits the valid data signal
    output [3:0] eth_tx_data, // The data sent by RGMII
    output       eth_rst_n  , // Ethernet PHY chip reset signal, with low level being the effective state

    // DAC Interface
    output [9:0] da_data1,
    output [9:0] da_data2,
    output       da_clk1,
    output       da_clk2
    );

    wire clk_200m, clk_125m, clk_6m25, locked, sys_rst_n;
    wire clk_250m;
    // System reset (Released only after PLL is locked)
    assign sys_rst_n = resetn & locked;

    clk_wiz_0 u_clk_wiz_0(
        .clk_out1(clk_200m),
        .clk_out2(clk_125m),
        .clk_out3(clk_6m25),
        .clk_out4(clk_250m),
        .resetn(resetn),
        .locked(locked),
        .clk_in1(clk)
        );

    // ILA debug - use clk_125m as reference (da_clk1 is same frequency)
    // To debug 6.25MHz issue, observe:
    // - symbol (QPSK symbol value)
    // - symbol_valid
    // - da_data1 (final output)
        
    clk_dac u_clk_dac(
        .clk_in1(clk_125m),
        .clk_out1(da_clk1),
        .clk_out2(da_clk2)
        );

    //==================================================
    // UDP interface signals
    //==================================================
    wire          udp_rec_pkt_done;   // UDP packet receive done
    wire [15:0]   udp_rec_byte_num;   // UDP received byte count
    wire [47:0]   src_mac;            // Source MAC from received packet
    wire [31:0]   src_ip;             // Source IP from received packet
    wire          udp_tx_start_en;    // UDP transmit start enable
    wire [15:0]   udp_tx_byte_num;    // UDP transmit byte count
    wire [47:0]   dest_mac;           // Destination MAC for transmit
    wire [31:0]   dest_ip;            // Destination IP for transmit
    wire [7:0]    udp_rec_data;       // UDP received data
    wire          udp_rec_en;         // UDP receive data enable
    wire [7:0]    udp_tx_data;        // UDP transmit data
    wire          udp_tx_req;         // UDP data request

    // FIFO signals
    wire [7:0]    fifo_dout;          // FIFO output data
    wire          fifo_rd_en;         // FIFO read enable
    wire          fifo_full;          // FIFO full flag
    wire          fifo_empty;         // FIFO empty flag
    wire          fifo_rd_req;        // FIFO read request from byte2symbol

    //==================================================
    // UDP transmit control - disabled (RX-only design)
    // To enable TX, add separate TX FIFO and arbiter logic
    //==================================================
    assign udp_tx_start_en = 1'b0;
    assign udp_tx_byte_num = 16'd0;
    assign dest_mac = 48'd0;
    assign dest_ip  = 32'd0;
    assign udp_tx_data = 8'd0;

    //==================================================
    // QPSK TX signals
    //==================================================
    wire [1:0]    symbol;             // QPSK symbol
    wire          symbol_valid;       // Symbol valid

    //==================================================
    // Asynchronous FIFO for UDP data buffering
    // Write: gmii_rx_clk domain (125MHz)
    // Read:  clk_6m25 domain (6.25MHz symbol rate)
    //==================================================
    async_fifo_8b u_udp_fifo (
        .rst           (~sys_rst_n   ),
        .wr_clk        (eth_rx_clk   ),  // 125MHz from GMII
        .rd_clk        (clk_6m25     ),  // 6.25MHz symbol clock
        .din           (udp_rec_data ),
        .wr_en         (udp_rec_en   ),
        .rd_en         (fifo_rd_en   ),
        .dout          (fifo_dout    ),
        .full          (fifo_full    ),
        .empty         (fifo_empty   ),
        .wr_rst_busy   (),
        .rd_rst_busy   ()
    );

    ila_0 u_ila(
        .clk(clk_250m),
        .probe0(udp_rec_en),
        .probe1(udp_rec_data),
        .probe2(fifo_empty),
        .probe3(fifo_rd_en),
        .probe4(fifo_rd_req),
        .probe5(fifo_dout),
        .probe6(symbol),
        .probe7(symbol_valid)
        );
    // FIFO read enable: controlled by byte2symbol for precise pre-fetch timing
    // Read when: (1) initial load (!busy && !empty) or (2) pre-fetch request (sym_cnt=3)
    assign fifo_rd_en = (~fifo_empty && ~symbol_valid) || fifo_rd_req;

    //==================================================
    // UDP top module instance
    // RX → QPSK, TX → reserved for future use
    //==================================================
    udp_top u_udp_top(
        .clk_in1            (clk_200m      ),
        .resetn             (sys_rst_n     ),

        // RGMII interface
        .eth_rx_clk         (eth_rx_clk    ),
        .eth_rx_ctl         (eth_rx_ctl    ),
        .eth_rx_data        (eth_rx_data   ),
        .eth_tx_clk         (eth_tx_clk    ),
        .eth_tx_ctl         (eth_tx_ctl    ),
        .eth_tx_data        (eth_tx_data   ),
        .eth_rst_n          (eth_rst_n     ),

        // UDP receive interface (to QPSK)
        .udp_rec_pkt_done   (udp_rec_pkt_done),
        .udp_rec_byte_num   (udp_rec_byte_num),
        .src_mac            (src_mac       ),
        .src_ip             (src_ip        ),

        // UDP transmit interface (reserved for future use)
        .udp_tx_start_en    (udp_tx_start_en),
        .udp_tx_byte_num    (udp_tx_byte_num),
        .dest_mac           (dest_mac      ),
        .dest_ip            (dest_ip       ),

        // UDP data interface
        .udp_rec_data       (udp_rec_data  ),
        .udp_rec_en         (udp_rec_en    ),
        .udp_tx_data        (udp_tx_data   ),
        .udp_tx_req         (udp_tx_req    )
    );

    //==================================================
    // UDP to QPSK symbol mapping
    // Converts 8-bit UDP data to 2-bit QPSK symbols (1 byte = 4 symbols)
    //==================================================
    byte2symbol u_byte2symbol (
        .clk          (clk_6m25),
        .rst_n        (sys_rst_n),
        .din          (fifo_dout),
        .din_valid    (~fifo_empty),
        .pkt_done     (udp_rec_pkt_done),
        .symbol_out   (symbol),
        .symbol_valid (symbol_valid),
        .fifo_rd_req  (fifo_rd_req)
    );

    //==================================================
    // qpsk_tx: QPSK modulation and IF generation
    //==================================================
    qpsk_tx u_qpsk_tx (
        .clk_in1      (clk_125m),
        .resetn       (sys_rst_n),
        .symbols      (symbol),
        .symbol_valid (symbol_valid),
        .da_data_o1   (da_data1),        // IF output (modulated)
        .da_data_o2   (da_data2)         // I baseband (for debug)
    );
    


endmodule
