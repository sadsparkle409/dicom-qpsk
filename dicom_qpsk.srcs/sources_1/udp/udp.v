module udp(
    input                rst_n       , //复位信号，低电平有效
    //GMII接口
    input                gmii_rx_clk , //GMII接收时钟（125MHz）
    input                gmii_rx_dv  , //GMII接收数据有效信号
    input        [7:0]   gmii_rxd    , //GMII接收数据
    input                gmii_tx_clk , //GMII发送时钟（125MHz）
    output               gmii_tx_en  , //GMII发送数据有效信号
    output       [7:0]   gmii_txd    , //GMII发送数据
    //用户接口
    output               rec_pkt_done, //以太网单包数据接收完成信号（脉冲1拍）
    output               rec_en      , //以太网接收到数据使能信号
    output       [ 7:0]  rec_data    , //以太网接收到的数据（逐字节，写入FIFO）
    output       [15:0]  rec_byte_num, //以太网接收到的有效字节数（单位:byte）
    input                tx_start_en , //以太网开始发送信号
    input        [ 7:0]  tx_data     , //以太网发送数据（来自FIFO经用户处理后）
    input        [15:0]  tx_byte_num , //以太网发送的有效字节数（单位:byte）
    input        [47:0]  des_mac     , //发送的目的MAC地址
    input        [31:0]  des_ip      , //发送的目的IP��址
    output               tx_done     , //以太网发送完成信号
    output               tx_req        //数据请求信号（FIFO读使能）
    );

//parameter define
//开发板MAC地址 00-11-22-33-44-55
parameter BOARD_MAC = 48'h00_11_22_33_44_55;
//开发板IP地址 192.168.1.10
parameter BOARD_IP  = {8'd192,8'd168,8'd1,8'd10};
//目的MAC地址（默认广播）ff:ff:ff:ff:ff:ff
parameter  DES_MAC  = 48'hff_ff_ff_ff_ff_ff;
//目的IP地址 192.168.1.102
parameter  DES_IP   = {8'd192,8'd168,8'd1,8'd102};

//wire define
wire          crc_en  ; //CRC��验使能
wire          crc_clr ; //CRC寄存器清除
wire  [7:0]   crc_d8  ; //CRC输入数据（取自gmii_txd，8bit）

wire  [31:0]  crc_data; //CRC当前值（32bit）
wire  [31:0]  crc_next; //CRC下一拍预计算值（32bit）

//*****************************************************
//**                    main code
//*****************************************************

//CRC计算数据直接取自GMII发送数据
assign  crc_d8 = gmii_txd;

//UDP接收模块：解析UDP帧，提取有效载荷并写入FIFO
udp_rx
   #(
    .BOARD_MAC       (BOARD_MAC),         //开发板MAC地址 00-11-22-33-44-55
    .BOARD_IP        (BOARD_IP )
    )
   u_udp_rx(
    .clk             (gmii_rx_clk ),
    .rst_n           (rst_n       ),
    .gmii_rx_dv      (gmii_rx_dv  ),
    .gmii_rxd        (gmii_rxd    ),
    .rec_pkt_done    (rec_pkt_done),
    .rec_en          (rec_en      ),
    .rec_data        (rec_data    ),
    .rec_byte_num    (rec_byte_num)
    );

//UDP发送模块：从FIFO读取数据，封装成UDP帧通过GMII发送
udp_tx
   #(
    .BOARD_MAC       (BOARD_MAC),         //开发板MAC地址 00-11-22-33-44-55
    .BOARD_IP        (BOARD_IP ),
    .DES_MAC         (DES_MAC  ),
    .DES_IP          (DES_IP   )
    )
   u_udp_tx(
    .clk             (gmii_tx_clk),
    .rst_n           (rst_n      ),
    .tx_start_en     (tx_start_en),
    .tx_data         (tx_data    ),
    .tx_byte_num     (tx_byte_num),
    .des_mac         (des_mac    ),
    .des_ip          (des_ip     ),
    .crc_data        (crc_data   ),
    .crc_next        (crc_next[31:24]),
    .tx_done         (tx_done    ),
    .tx_req          (tx_req     ),
    .gmii_tx_en      (gmii_tx_en ),
    .gmii_txd        (gmii_txd   ),
    .crc_en          (crc_en     ),
    .crc_clr         (crc_clr    )
    );

//CRC32校验模块：对UDP发送帧进行CRC32计算
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
