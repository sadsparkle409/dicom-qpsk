module eth_ctrl(
    input              clk              ,    //Clock (gmii_rx_clk, 125MHz)
    input              rst_n            ,    //Reset signal, active low
    //ARP port signals
    input              arp_rx_done      ,    //ARP receive done signal
    input              arp_rx_type      ,    //ARP receive type: 0=request, 1=reply
    output  reg        arp_tx_en        ,    //ARP transmit enable (pulse, 1 cycle width)
    output             arp_tx_type      ,    //ARP transmit type: fixed to 1 (reply)
    input              arp_tx_done      ,    //ARP transmit done signal
    input              arp_gmii_tx_en   ,    //ARP GMII transmit data valid
    input     [7:0]    arp_gmii_txd     ,    //ARP GMII transmit data
    //UDP port signals
    input              udp_tx_start_en  ,    //UDP transmit start enable
    input              udp_tx_done      ,    //UDP transmit done signal
    input              udp_gmii_tx_en   ,    //UDP GMII transmit data valid
    input     [7:0]    udp_gmii_txd     ,    //UDP GMII transmit data
    //GMII transmit port
    output reg         gmii_tx_en       ,    //GMII transmit data valid
    output reg [7:0]   gmii_txd              //GMII transmit data
    );

//reg define
reg [1:0]  protocol_sel;      //Protocol selector: 00=ARP, 01=UDP
reg        udp_tx_busy;       //UDP transmit busy flag
reg        arp_rx_flag;       //ARP request received flag (wait for idle to send reply)

//*****************************************************
//**                 main code
//*****************************************************

assign arp_tx_type = 1'b1;                                      //ARP transmit type fixed to ARP reply

//Protocol arbitration: select GMII output based on protocol_sel
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        gmii_tx_en <= 1'd0;
        gmii_txd   <= 8'd0;
    end
    else begin
        case(protocol_sel)
            2'b00:  begin                          //Select ARP protocol output
                gmii_tx_en <= arp_gmii_tx_en;
                gmii_txd   <= arp_gmii_txd;
            end
            2'b01: begin                           //Select UDP protocol output
                gmii_tx_en <= udp_gmii_tx_en;
                gmii_txd   <= udp_gmii_txd;
            end
            default: begin
                gmii_tx_en <= 1'b0;
                gmii_txd   <= 8'd0;
            end
        endcase
    end
end

//UDP transmit busy status: set on start, clear on done
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        udp_tx_busy <= 1'b0;
    else if(udp_tx_start_en)
        udp_tx_busy <= 1'b1;
    else if(udp_tx_done)
        udp_tx_busy <= 1'b0;
    else ;
end

//Latch ARP request received flag: set on ARP request (type=0), clear next cycle
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        arp_rx_flag <= 1'b0;
    else if(arp_rx_done && (arp_rx_type == 1'b0))
        arp_rx_flag <= 1'b1;
    else
        arp_rx_flag <= 1'b0;
end

//Protocol switching and ARP transmit enable:
//  UDP transmit takes priority;
//  ARP request switches to ARP when UDP is not busy
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        protocol_sel <= 2'b0;
        arp_tx_en   <= 1'b0;
    end
    else begin
        arp_tx_en <= 1'b0;
        if (udp_tx_start_en) begin
            protocol_sel <= 2'b01;           //Switch to UDP
        end
        else if(arp_rx_flag && (udp_tx_busy == 1'b0)) begin
            protocol_sel <= 2'b0;            //Switch to ARP
            arp_tx_en   <= 1'b1;             //Trigger ARP transmit enable pulse
        end
        else ;
    end
end

endmodule
