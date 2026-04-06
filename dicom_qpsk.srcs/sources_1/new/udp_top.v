`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2026/04/02 18:54:01
// Design Name:
// Module Name: udp_top
// Project Name:
// Target Devices:
// Tool Versions:
// Description: UDP module with external data interface for top-level processing
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module udp_top(
    input        clk_in1    , // 200MHz reference clock for IDELAY
    input        resetn     , // System reset, active low

    // PL-side Ethernet RGMII interface
    input         eth_rx_clk , // RGMII receive clock (from PHY)
    input         eth_rx_ctl , // RGMII receive control (data valid/error)
    input  [3:0]  eth_rx_data, // RGMII receive data
    output        eth_tx_clk , // RGMII transmit clock
    output        eth_tx_ctl , // RGMII transmit control (data enable)
    output [3:0]  eth_tx_data, // RGMII transmit data
    output        eth_rst_n  , // Ethernet PHY reset, active low

    // UDP receive interface (to top module for processing)
    output        udp_rec_pkt_done,   // UDP packet receive done
    output [15:0] udp_rec_byte_num,   // UDP received byte count
    output [47:0] src_mac,            // Source MAC address from received packet
    output [31:0] src_ip,             // Source IP address from received packet

    // UDP transmit interface (from top module after processing)
    input         udp_tx_start_en,    // UDP transmit start enable
    input  [15:0] udp_tx_byte_num,    // UDP transmit byte count
    input  [47:0] dest_mac,           // Destination MAC address for transmit
    input  [31:0] dest_ip,            // Destination IP address for transmit

    // FIFO interface for data loopback/processing
    output [7:0]  udp_rec_data,       // UDP received data (to FIFO)
    output        udp_rec_en,         // UDP receive data enable
    input  [7:0]  udp_tx_data,        // UDP transmit data (from FIFO)
    input         udp_tx_req          // UDP data request signal
    );

    //==================================================
    // Parameter definitions
    //==================================================
    // Board MAC address: 00-11-22-33-44-55
    parameter BOARD_MAC = 48'h00_11_22_33_44_55;
    // Board IP address: 192.168.1.10
    parameter BOARD_IP  = {8'd192, 8'd168, 8'd1, 8'd10};
    // Destination MAC address (broadcast): ff:ff:ff:ff:ff:ff
    parameter DES_MAC   = 48'hff_ff_ff_ff_ff_ff;
    // Destination IP address: 192.168.1.102
    parameter DES_IP    = {8'd192, 8'd168, 8'd1, 8'd150};
    // IDELAY value: 0 for no delay; n for n*78ps delay
    parameter IDELAY_VALUE = 0;

    //==================================================
    // Wire definitions
    //==================================================
    // GMII interface signals
    wire          gmii_rx_clk;        // GMII receive clock
    wire          gmii_rx_dv;         // GMII receive data valid
    wire  [7:0]   gmii_rxd;           // GMII receive data
    wire          gmii_tx_clk;        // GMII transmit clock
    wire          gmii_tx_en;         // GMII transmit data valid
    wire  [7:0]   gmii_txd;           // GMII transmit data

    // ARP module signals
    wire          arp_gmii_tx_en;     // ARP GMII transmit enable
    wire  [7:0]   arp_gmii_txd;       // ARP GMII transmit data
    wire          arp_rx_done;        // ARP receive done
    wire          arp_rx_type;        // ARP receive type: 0=request, 1=reply
    wire          arp_tx_en;          // ARP transmit enable
    wire          arp_tx_type;        // ARP transmit type: 0=request, 1=reply
    wire          arp_tx_done;        // ARP transmit done

    // UDP module internal signals
    wire          udp_gmii_tx_en;     // UDP GMII transmit enable
    wire  [7:0]   udp_gmii_txd;       // UDP GMII transmit data
    wire          udp_tx_done;        // UDP transmit done

    //==================================================
    // Output assignments
    //==================================================
    assign eth_rst_n = resetn;

    //==================================================
    // GMII to RGMII converter
    //==================================================
    gmii_to_rgmii
        #(
         .IDELAY_VALUE (IDELAY_VALUE)
         )
        u_gmii_to_rgmii(
        .idelay_clk    (clk_in1     ),

        .gmii_rx_clk   (gmii_rx_clk ),
        .gmii_rx_dv    (gmii_rx_dv  ),
        .gmii_rxd      (gmii_rxd    ),
        .gmii_tx_clk   (gmii_tx_clk ),
        .gmii_tx_en    (gmii_tx_en  ),
        .gmii_txd      (gmii_txd    ),

        .rgmii_rxc     (eth_rx_clk  ),
        .rgmii_rx_ctl  (eth_rx_ctl  ),
        .rgmii_rxd     (eth_rx_data ),
        .rgmii_txc     (eth_tx_clk  ),
        .rgmii_tx_ctl  (eth_tx_ctl  ),
        .rgmii_txd     (eth_tx_data )
        );

    //==================================================
    // ARP module
    //==================================================
    arp
       #(
        .BOARD_MAC     (BOARD_MAC),
        .BOARD_IP      (BOARD_IP ),
        .DES_MAC       (DES_MAC  ),
        .DES_IP        (DES_IP   )
        )
       u_arp(
        .rst_n         (resetn       ),

        .gmii_rx_clk   (gmii_rx_clk  ),
        .gmii_rx_dv    (gmii_rx_dv   ),
        .gmii_rxd      (gmii_rxd     ),
        .gmii_tx_clk   (gmii_tx_clk  ),
        .gmii_tx_en    (arp_gmii_tx_en),
        .gmii_txd      (arp_gmii_txd ),

        .arp_rx_done   (arp_rx_done  ),
        .arp_rx_type   (arp_rx_type  ),
        .src_mac       (src_mac      ),
        .src_ip        (src_ip       ),
        .arp_tx_en     (arp_tx_en    ),
        .arp_tx_type   (arp_tx_type  ),
        .des_mac       (src_mac      ),  // Loopback: reply to sender
        .des_ip        (src_ip       ),  // Loopback: reply to sender
        .tx_done       (arp_tx_done  )
        );

    //==================================================
    // UDP module
    //==================================================
    udp
       #(
        .BOARD_MAC     (BOARD_MAC),
        .BOARD_IP      (BOARD_IP ),
        .DES_MAC       (DES_MAC  ),
        .DES_IP        (DES_IP   )
        )
       u_udp(
        .rst_n         (resetn        ),

        .gmii_rx_clk   (gmii_rx_clk   ),
        .gmii_rx_dv    (gmii_rx_dv    ),
        .gmii_rxd      (gmii_rxd      ),
        .gmii_tx_clk   (gmii_tx_clk   ),
        .gmii_tx_en    (udp_gmii_tx_en),
        .gmii_txd      (udp_gmii_txd  ),

        .rec_pkt_done  (udp_rec_pkt_done),
        .rec_en        (udp_rec_en    ),
        .rec_data      (udp_rec_data  ),
        .rec_byte_num  (udp_rec_byte_num),
        .tx_start_en   (udp_tx_start_en),
        .tx_data       (udp_tx_data   ),  // Direct from top FIFO
        .tx_byte_num   (udp_tx_byte_num),
        .des_mac       (dest_mac      ),
        .des_ip        (dest_ip       ),
        .tx_done       (udp_tx_done   ),
        .tx_req        (udp_tx_req    )
        );

    //==================================================
    // Ethernet control module (protocol arbitration only)
    //==================================================
    eth_ctrl u_eth_ctrl(
        .clk                (gmii_rx_clk   ),
        .rst_n              (resetn        ),

        .arp_rx_done        (arp_rx_done   ),
        .arp_rx_type        (arp_rx_type   ),
        .arp_tx_en          (arp_tx_en     ),
        .arp_tx_type        (arp_tx_type   ),
        .arp_tx_done        (arp_tx_done   ),
        .arp_gmii_tx_en     (arp_gmii_tx_en),
        .arp_gmii_txd       (arp_gmii_txd  ),

        .udp_tx_start_en    (udp_tx_start_en),
        .udp_tx_done        (udp_tx_done   ),
        .udp_gmii_tx_en     (udp_gmii_tx_en),
        .udp_gmii_txd       (udp_gmii_txd  ),

        .gmii_tx_en         (gmii_tx_en    ),
        .gmii_txd           (gmii_txd      )
    );

endmodule
