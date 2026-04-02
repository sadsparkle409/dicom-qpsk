module arp(
    input                rst_n      , //复位信号，低电平有效
    //GMII接口
    input                gmii_rx_clk, //GMII接收时钟
    input                gmii_rx_dv , //GMII接收数据有效信号
    input        [7:0]   gmii_rxd   , //GMII接收数据
    input                gmii_tx_clk, //GMII发送时钟
    output               gmii_tx_en , //GMII发送数据有效信号
    output       [7:0]   gmii_txd   , //GMII发送数据

    //用户接口
    output               arp_rx_done, //ARP接收完成信号（脉冲宽度1拍）
    output               arp_rx_type, //ARP接收类型：0=请求，1=应答
    output       [47:0]  src_mac    , //接收到的源MAC地址
    output       [31:0]  src_ip     , //接收到的源IP地址
    input                arp_tx_en  , //ARP发送使能信号
    input                arp_tx_type, //ARP发送类型：0=请求，1=应答
    input        [47:0]  des_mac    , //发送的目的MAC地址
    input        [31:0]  des_ip     , //发送的目的IP地址
    output               tx_done      //以太网发送完成信号
    );

//parameter define
//开发板MAC地址 00-11-22-33-44-55
parameter BOARD_MAC = 48'h00_11_22_33_44_55;
//开发板IP地址 192.168.1.10
parameter BOARD_IP  = {8'd192,8'd168,8'd1,8'd10};
//目的MAC地址 ff:ff:ff:ff:ff:ff（广播）
parameter  DES_MAC   = 48'hff_ff_ff_ff_ff_ff;
//目的IP地址 192.168.1.102
parameter  DES_IP    = {8'd192,8'd168,8'd1,8'd102};

//wire define
wire           crc_en  ; //CRC校验开始使能
wire           crc_clr ; //CRC数据清除（发送完成后复位CRC寄存器）
wire   [7:0]   crc_d8  ; //CRC校验输入数据（8bit，取自gmii_txd）
wire   [31:0]  crc_data; //CRC校验当前值（32bit）
wire   [31:0]  crc_next; //CRC下一拍校验数据（提前一拍获���，用于末字节输出）

//*****************************************************
//**                    main code
//*****************************************************

//CRC计算数据直接取自GMII发送数据
assign  crc_d8 = gmii_txd;

//ARP接收模块：解析ARP帧，提取源MAC/IP，判断帧类型
arp_rx
   #(
    .BOARD_MAC       (BOARD_MAC),         //开发板MAC地址 00-11-22-33-44-55
    .BOARD_IP        (BOARD_IP )
    )
   u_arp_rx(
    .clk             (gmii_rx_clk),
    .rst_n           (rst_n),

    .gmii_rx_dv      (gmii_rx_dv ),
    .gmii_rxd        (gmii_rxd   ),
    .arp_rx_done     (arp_rx_done),
    .arp_rx_type     (arp_rx_type),
    .src_mac         (src_mac    ),
    .src_ip          (src_ip     )
    );

//ARP发送模块：构��ARP帧并通过GMII发送，支持请求和应答
arp_tx
   #(
    .BOARD_MAC       (BOARD_MAC),         //开发板MAC地址 00-11-22-33-44-55
    .BOARD_IP        (BOARD_IP ),
    .DES_MAC         (DES_MAC  ),
    .DES_IP          (DES_IP   )
    )
   u_arp_tx(
    .clk             (gmii_tx_clk),
    .rst_n           (rst_n),

    .arp_tx_en       (arp_tx_en ),
    .arp_tx_type     (arp_tx_type),
    .des_mac         (des_mac   ),
    .des_ip          (des_ip    ),
    .crc_data        (crc_data  ),
    .crc_next        (crc_next[31:24]),
    .tx_done         (tx_done   ),
    .gmii_tx_en      (gmii_tx_en),
    .gmii_txd        (gmii_txd  ),
    .crc_en          (crc_en    ),
    .crc_clr         (crc_clr   )
    );

//CRC32校验模块：对发送的以太网帧数据进行CRC32计算
crc32_d8   u_crc32_d8(
    .clk             (gmii_tx_clk),
    .rst_n           (rst_n      ),
    .data            (crc_d8     ),
    .crc_en          (crc_en     ),
    .crc_clr         (crc_clr    ),
    .crc_data        (crc_data   ),
    .crc_next        (crc_next   )
    );

endmodule
