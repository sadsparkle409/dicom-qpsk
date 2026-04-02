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
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
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
    clk_dac u_clk_dac(
        .clk_in1(clk_125m),
        .clk_out1(da_clk1),
        .clk_out2(da_clk2)
        );   
        
        
    udp_top u_udp_top(
        .clk_in1(clk_200m),
        .resetn(sys_rst_n),
        .eth_rx_clk(eth_rx_clk),
        .eth_rx_ctl(eth_rx_ctl),
        .eth_rx_data(eth_rx_data),
        .eth_tx_clk(eth_tx_clk),
        .eth_tx_ctl(eth_tx_ctl),
        .eth_tx_data(eth_tx_data),
        .eth_rst_n(eth_rst_n)
    );    
endmodule
