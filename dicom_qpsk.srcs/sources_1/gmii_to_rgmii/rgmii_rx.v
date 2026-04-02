module rgmii_rx(
    input              idelay_clk  , //200MHz reference clock for IDELAY

    //RGMII interface
    input              rgmii_rxc   , //RGMII receive clock
    input              rgmii_rx_ctl, //RGMII receive data valid and error signal
    input       [3:0]  rgmii_rxd   , //RGMII receive data

    //GMII interface
    output             gmii_rx_clk , //GMII receive clock
    output             gmii_rx_dv  , //GMII receive data valid signal
    output      [7:0]  gmii_rxd      //GMII receive data
    );

//parameter define
parameter IDELAY_VALUE = 0;

//wire define
wire         rgmii_rxc_bufg;     //Global clock buffer output
wire         rgmii_rxc_bufio;    //IO clock buffer output
wire  [3:0]  rgmii_rxd_delay;    //Delayed rgmii_rxd signal
wire         rgmii_rx_ctl_delay; //Delayed rgmii_rx_ctl signal
wire  [1:0]  gmii_rxdv_t;        //GMII data valid temp signal

//*****************************************************
//**                 main code
//*****************************************************

assign gmii_rx_clk = rgmii_rxc_bufg;
assign gmii_rx_dv = gmii_rxdv_t[0] & gmii_rxdv_t[1];

//Global clock buffer
BUFG BUFG_inst (
  .I            (rgmii_rxc),     // 1-bit input: Clock input
  .O            (rgmii_rxc_bufg) // 1-bit output: Clock output
);

//IO clock buffer
BUFIO BUFIO_inst (
  .I            (rgmii_rxc),      // 1-bit input: Clock input
  .O            (rgmii_rxc_bufio) // 1-bit output: Clock output
);

//Input delay controller
// Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL
(* IODELAY_GROUP = "rgmii_rx_delay" *)
IDELAYCTRL  IDELAYCTRL_inst (
    .RDY(),                      // 1-bit output: Ready output
    .REFCLK(idelay_clk),         // 1-bit input: Reference clock input
    .RST(1'b0)                   // 1-bit input: Active high reset input
);

//rgmii_rx_ctl input delay and double data rate conversion
(* IODELAY_GROUP = "rgmii_rx_delay" *)
IDELAYE2 #(
  .IDELAY_TYPE     ("FIXED"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
  .IDELAY_VALUE    (IDELAY_VALUE),      // Input delay tap setting (0-31)
  .REFCLK_FREQUENCY(200.0)              // IDELAYCTRL clock input frequency in MHz
)
u_delay_rx_ctrl (
  .CNTVALUEOUT     (),                  // 5-bit output: Counter value output
  .DATAOUT         (rgmii_rx_ctl_delay),// 1-bit output: Delayed data output
  .C               (1'b0),              // 1-bit input: Clock input
  .CE              (1'b0),              // 1-bit input: enable increment/decrement
  .CINVCTRL        (1'b0),              // 1-bit input: Dynamic clock inversion input
  .CNTVALUEIN      (5'b0),              // 5-bit input: Counter value input
  .DATAIN          (1'b0),              // 1-bit input: Internal delay data input
  .IDATAIN         (rgmii_rx_ctl),      // 1-bit input: Data input from the I/O
  .INC             (1'b0),              // 1-bit input: Increment / Decrement tap delay
  .LD              (1'b0),              // 1-bit input: Load IDELAY_VALUE input
  .LDPIPEEN        (1'b0),              // 1-bit input: Enable PIPELINE register
  .REGRST          (1'b0)               // 1-bit input: Active-high reset tap-delay input
);

//Input double data rate conversion for rgmii_rx_ctl
IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),// "OPPOSITE_EDGE", "SAME_EDGE"
                                        //    or "SAME_EDGE_PIPELINED"
    .INIT_Q1  (1'b0),                   // Initial value of Q1: 1'b0 or 1'b1
    .INIT_Q2  (1'b0),                   // Initial value of Q2: 1'b0 or 1'b1
    .SRTYPE   ("SYNC")                  // Set/Reset type: "SYNC" or "ASYNC"
) u_iddr_rx_ctl (
    .Q1       (gmii_rxdv_t[0]),         // 1-bit output for positive edge of clock
    .Q2       (gmii_rxdv_t[1]),         // 1-bit output for negative edge of clock
    .C        (rgmii_rxc_bufio),        // 1-bit clock input
    .CE       (1'b1),                   // 1-bit clock enable input
    .D        (rgmii_rx_ctl_delay),     // 1-bit DDR data input
    .R        (1'b0),                   // 1-bit reset
    .S        (1'b0)                    // 1-bit set
);

//rgmii_rxd input delay and double data rate conversion
genvar i;
generate for (i=0; i<4; i=i+1)
    (* IODELAY_GROUP = "rgmii_rx_delay" *)
    begin : rxdata_bus
        //Input delay
        (* IODELAY_GROUP = "rgmii_rx_delay" *)
        IDELAYE2 #(
          .IDELAY_TYPE     ("FIXED"),           // FIXED,VARIABLE,VAR_LOAD,VAR_LOAD_PIPE
          .IDELAY_VALUE    (IDELAY_VALUE),      // Input delay tap setting (0-31)
          .REFCLK_FREQUENCY(200.0)              // IDELAYCTRL clock input frequency in MHz
        )
        u_delay_rxd (
          .CNTVALUEOUT     (),                  // 5-bit output: Counter value output
          .DATAOUT         (rgmii_rxd_delay[i]),// 1-bit output: Delayed data output
          .C               (1'b0),              // 1-bit input: Clock input
          .CE              (1'b0),              // 1-bit input: enable increment/decrement
          .CINVCTRL        (1'b0),              // 1-bit input: Dynamic clock inversion
          .CNTVALUEIN      (5'b0),              // 5-bit input: Counter value input
          .DATAIN          (1'b0),              // 1-bit input: Internal delay data input
          .IDATAIN         (rgmii_rxd[i]),      // 1-bit input: Data input from the I/O
          .INC             (1'b0),              // 1-bit input: Inc/Decrement tap delay
          .LD              (1'b0),              // 1-bit input: Load IDELAY_VALUE input
          .LDPIPEEN        (1'b0),              // 1-bit input: Enable PIPELINE register
          .REGRST          (1'b0)               // 1-bit input: Active-high reset tap-delay
        );

        //Input double data rate conversion
        IDDR #(
            .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),// "OPPOSITE_EDGE", "SAME_EDGE"
                                                //    or "SAME_EDGE_PIPELINED"
            .INIT_Q1  (1'b0),                   // Initial value of Q1: 1'b0 or 1'b1
            .INIT_Q2  (1'b0),                   // Initial value of Q2: 1'b0 or 1'b1
            .SRTYPE   ("SYNC")                  // Set/Reset type: "SYNC" or "ASYNC"
        ) u_iddr_rxd (
            .Q1       (gmii_rxd[i]),            // 1-bit output for positive edge of clock
            .Q2       (gmii_rxd[4+i]),          // 1-bit output for negative edge of clock
            .C        (rgmii_rxc_bufio),        // 1-bit clock input rgmii_rxc_bufio
            .CE       (1'b1),                   // 1-bit clock enable input
            .D        (rgmii_rxd_delay[i]),     // 1-bit DDR data input
            .R        (1'b0),                   // 1-bit reset
            .S        (1'b0)                    // 1-bit set
        );
    end
endgenerate

endmodule
