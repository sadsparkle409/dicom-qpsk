module gmii_to_rgmii(
    input              idelay_clk  , //IDELAY reference clock (200MHz)
    //GMII interface
    output             gmii_rx_clk , //GMII receive clock
    output             gmii_rx_dv  , //GMII receive data valid signal
    output      [7:0]  gmii_rxd    , //GMII receive data
    output             gmii_tx_clk , //GMII transmit clock
    input              gmii_tx_en  , //GMII transmit data valid signal
    input       [7:0]  gmii_txd    , //GMII transmit data
    //RGMII interface
    input              rgmii_rxc   , //RGMII receive clock
    input              rgmii_rx_ctl, //RGMII receive data valid and error signal
    input       [3:0]  rgmii_rxd   , //RGMII receive data
    output             rgmii_txc   , //RGMII transmit clock
    output             rgmii_tx_ctl, //RGMII transmit data valid signal
    output      [3:0]  rgmii_txd     //RGMII transmit data
    );

//parameter define
parameter IDELAY_VALUE = 0;  //Input delay value: 0 = no delay; n = delay n*78ps

//*****************************************************
//**                 main code
//*****************************************************

assign gmii_tx_clk = gmii_rx_clk;

//RGMII receive module instance
rgmii_rx
    #(
     .IDELAY_VALUE  (IDELAY_VALUE)
     )
    u_rgmii_rx(
    .idelay_clk    (idelay_clk  ),
    .gmii_rx_clk   (gmii_rx_clk ),
    .rgmii_rxc     (rgmii_rxc   ),
    .rgmii_rx_ctl  (rgmii_rx_ctl),
    .rgmii_rxd     (rgmii_rxd   ),

    .gmii_rx_dv    (gmii_rx_dv  ),
    .gmii_rxd      (gmii_rxd    )
    );

//RGMII transmit module instance
rgmii_tx u_rgmii_tx(
    .gmii_tx_clk   (gmii_tx_clk ),
    .gmii_tx_en    (gmii_tx_en  ),
    .gmii_txd      (gmii_txd    ),

    .rgmii_txc     (rgmii_txc   ),
    .rgmii_tx_ctl  (rgmii_tx_ctl),
    .rgmii_txd     (rgmii_txd   )
    );

endmodule
