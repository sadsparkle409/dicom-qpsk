`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/03/28 19:03:52
// Design Name: 
// Module Name: clk_dac
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


module clk_dac(
    input clk_in1,
    input clk_out1,
    input clk_out2
    );
    
    ODDR #(
        .DDR_CLK_EDGE("SAME_EDGE")
    ) u_dac_clk1_oddr (
        .Q(clk_out1),
        .C(clk_in1),
        .CE(1'b1),
        .D1(1'b1),  // Rigsing Edge
        .D2(1'b0),  // Falling Edge
        .R(1'b0),
        .S(1'b0)
    );
    ODDR #(
        .DDR_CLK_EDGE("SAME_EDGE")
    ) u_dac_clk2_oddr (
        .Q(clk_out2),
        .C(clk_in1),
        .CE(1'b1),
        .D1(1'b1),  // 上升沿
        .D2(1'b0),  // 下降沿
        .R(1'b0),
        .S(1'b0)
    );   
endmodule
