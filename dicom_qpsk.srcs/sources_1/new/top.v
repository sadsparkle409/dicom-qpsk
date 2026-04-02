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

    // System reset (Released only after PLL is locked)
    assign sys_rst_n = resetn & locked;

    clk_wiz_0 u_clk_wiz_0(
        .clk_out1(clk_200m),
        .clk_out2(clk_125m),
        .clk_out3(clk_6m25),
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

    //==================================================
    // QPSK TX signals
    //==================================================
    wire [1:0]    symbol;             // QPSK symbol
    wire          symbol_valid;       // Symbol valid

    //==================================================
    // UDP loopback logic
    // Trigger transmit when packet received, filter 0-byte packets
    //==================================================
    assign udp_tx_start_en = udp_rec_pkt_done && (udp_rec_byte_num > 16'd0);
    assign udp_tx_byte_num = udp_rec_byte_num;

    // Loopback: destination points to sender
    assign dest_mac = src_mac;
    assign dest_ip  = src_ip;

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

    // FIFO read enable: when UDP requests data and FIFO not empty
    assign fifo_rd_en = udp_tx_req && ~fifo_empty;

    // TX data from FIFO (loopback to UDP)
    assign udp_tx_data = fifo_dout;

    //==================================================
    // UDP top module instance
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

        // UDP receive interface (to top)
        .udp_rec_pkt_done   (udp_rec_pkt_done),
        .udp_rec_byte_num   (udp_rec_byte_num),
        .src_mac            (src_mac       ),
        .src_ip             (src_ip        ),

        // UDP transmit interface (from top)
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
    // Test pattern generator (always enabled for testing)
    //==================================================
    data_gen u_data_gen (
        .clk          (clk_6m25),
        .rst_n        (sys_rst_n),
        .enable       (1'b1),              // Always enabled
        .symbol_out   (symbol),
        .symbol_valid (symbol_valid)
    );

    //==================================================
    // qpsk_tx: QPSK modulation and IF generation
    //==================================================
    qpsk_tx u_qpsk_tx (
        .clk_in1      (clk_125m),
        .resetn       (sys_rst_n),
        .symbols      (symbol),
        .symbol_valid (symbol_valid),    // 0 when no data -> clean spectrum
        .da_data_o1   (da_data1),        // IF output (modulated)
        .da_data_o2   (da_data2)         // I baseband (for debug)
    );

endmodule
