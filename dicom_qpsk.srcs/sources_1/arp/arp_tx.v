module arp_tx(
    input                clk        , //时钟（gmii_tx_clk，125MHz）
    input                rst_n      , //复位信号，低电平有效

    input                arp_tx_en  , //ARP发送使能信号（eth_ctrl发出的脉冲）
    input                arp_tx_type, //ARP发送类型：0=请求，1=应答
    input        [47:0]  des_mac    , //发送的目的MAC地址
    input        [31:0]  des_ip     , //发送的目的IP地址
    input        [31:0]  crc_data   , //CRC校验当前值（32bit）
    input         [7:0]  crc_next   , //CRC下一拍校验数据高字节（提前一拍，用于末字节输出）
    output  reg          tx_done    , //以太网发送完成信号（脉冲宽度1拍）
    output  reg          gmii_tx_en , //GMII发送数据有效信号
    output  reg  [7:0]   gmii_txd   , //GMII发送数据
    output  reg          crc_en     , //CRC校验使能（帧头及载荷发送期间保持高电平）
    output  reg          crc_clr      //CRC数据清除（发送完成后复位CRC寄存器，脉冲1拍）
    );

//parameter define
//开发板MAC地址 00-11-22-33-44-55
parameter BOARD_MAC = 48'h00_11_22_33_44_55;
//开发板IP地址 192.168.1.10
parameter BOARD_IP  = {8'd192,8'd168,8'd1,8'd10};
//目的MAC地址（默认广播）ff:ff:ff:ff:ff:ff
parameter  DES_MAC   = 48'hff_ff_ff_ff_ff_ff;
//目的IP地址 192.168.1.102
parameter  DES_IP    = {8'd192,8'd168,8'd1,8'd102};

//localparam define
localparam  st_idle      = 5'b0_0001; //空闲状态，等待发送使能
localparam  st_preamble  = 5'b0_0010; //发送前导码（7×0x55 + SFD 0xD5）
localparam  st_eth_head  = 5'b0_0100; //发送以太网帧头（目的MAC+源MAC+帧类型，14字节）
localparam  st_arp_data  = 5'b0_1000; //发送ARP载荷（28字节，不足46字节则补0）
localparam  st_crc       = 5'b1_0000; //发送CRC32校验值（4字节，按位取反并位反转）
localparam  ETH_TYPE     = 16'h0806 ; //ARP以太网帧类型
localparam  HD_TYPE      = 16'h0001 ; //ARP硬件类型：以太网
localparam  PROTOCOL_TYPE= 16'h0800 ; //ARP上层协议类型：IPv4
//以太网最小帧有效载荷46字节（不含帧头14字节和FCS 4字节）
localparam  MIN_DATA_NUM = 16'd46   ;

//reg define
reg  [4:0]  cur_state     ;
reg  [4:0]  next_state    ;
reg  [7:0]  preamble[7:0] ; //前导码 + 帧起始定界符（SFD）
reg  [7:0]  eth_head[13:0]; //以太网帧头（目的MAC 6B + 源MAC 6B + 帧类型 2B）
reg  [7:0]  arp_data[27:0]; //ARP载荷（28字节）
reg         tx_en_d0      ; //arp_tx_en打拍（用于上升沿检测）
reg         tx_en_d1      ;
reg         tx_en_d2      ;
reg         skip_en       ; //状态跳转使能
reg  [5:0]  cnt           ; //字节计数器（发送进度）
reg  [4:0]  data_cnt      ; //ARP载荷字节计数器
reg         tx_done_t     ; //发送完成内部信号（打拍后输出）

//wire define
wire        pos_tx_en     ; //arp_tx_en上升沿脉冲

//*****************************************************
//**                    main code
//*****************************************************

//检测arp_tx_en上升沿
assign  pos_tx_en = (~tx_en_d2) & tx_en_d1;

//arp_tx_en打3拍，用于上升沿检测
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        tx_en_d0 <= 1'b0;
        tx_en_d1 <= 1'b0;
        tx_en_d2 <= 1'b0;
    end
    else begin
        tx_en_d0 <= arp_tx_en;
        tx_en_d1 <= tx_en_d0;
        tx_en_d2 <= tx_en_d1;
    end
end

//时序逻辑：同步状态转移
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        cur_state <= st_idle;
    else
        cur_state <= next_state;
end

//组合逻辑：次态计算
always @(*) begin
    next_state = st_idle;
    case(cur_state)
        st_idle : begin                     //空闲，等待发送使能
            if(skip_en)
                next_state = st_preamble;
            else
                next_state = st_idle;
        end
        st_preamble : begin                 //发送前导码 + SFD
            if(skip_en)
                next_state = st_eth_head;
            else
                next_state = st_preamble;
        end
        st_eth_head : begin                 //发送以太网帧头
            if(skip_en)
                next_state = st_arp_data;
            else
                next_state = st_eth_head;
        end
        st_arp_data : begin                 //发送ARP载荷（含补零填充至46字节）
            if(skip_en)
                next_state = st_crc;
            else
                next_state = st_arp_data;
        end
        st_crc: begin                       //发送CRC32（4字节）
            if(skip_en)
                next_state = st_idle;
            else
                next_state = st_crc;
        end
        default : next_state = st_idle;
    endcase
end

//时序逻辑：发送数据与控制信号生成
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        skip_en   <= 1'b0;
        cnt       <= 6'd0;
        data_cnt  <= 5'd0;
        crc_en    <= 1'b0;
        gmii_tx_en <= 1'b0;
        gmii_txd  <= 8'd0;
        tx_done_t <= 1'b0;

        //初始化前导码：7×0x55 + SFD 0xD5
        preamble[0] <= 8'h55;
        preamble[1] <= 8'h55;
        preamble[2] <= 8'h55;
        preamble[3] <= 8'h55;
        preamble[4] <= 8'h55;
        preamble[5] <= 8'h55;
        preamble[6] <= 8'h55;
        preamble[7] <= 8'hd5;
        //初始化以太网帧头（使用默认参数值）
        eth_head[0]  <= DES_MAC[47:40];     //目的MAC[47:40]
        eth_head[1]  <= DES_MAC[39:32];
        eth_head[2]  <= DES_MAC[31:24];
        eth_head[3]  <= DES_MAC[23:16];
        eth_head[4]  <= DES_MAC[15:8];
        eth_head[5]  <= DES_MAC[7:0];
        eth_head[6]  <= BOARD_MAC[47:40];   //源MAC（本机MAC）
        eth_head[7]  <= BOARD_MAC[39:32];
        eth_head[8]  <= BOARD_MAC[31:24];
        eth_head[9]  <= BOARD_MAC[23:16];
        eth_head[10] <= BOARD_MAC[15:8];
        eth_head[11] <= BOARD_MAC[7:0];
        eth_head[12] <= ETH_TYPE[15:8];     //帧类型：ARP（0x0806）
        eth_head[13] <= ETH_TYPE[7:0];
        //初始化ARP载荷（28字节）
        arp_data[0]  <= HD_TYPE[15:8];       //硬件类型高字节（0x00）
        arp_data[1]  <= HD_TYPE[7:0];        //硬件类型低字节（0x01，以太网）
        arp_data[2]  <= PROTOCOL_TYPE[15:8]; //上层协议类型高字节（0x08）
        arp_data[3]  <= PROTOCOL_TYPE[7:0];  //上层协议类型低字节（0x00，IPv4）
        arp_data[4]  <= 8'h06;               //硬件地址长度：6字节（MAC）
        arp_data[5]  <= 8'h04;               //协议地址长度：4字节（IPv4）
        arp_data[6]  <= 8'h00;               //操作码高字节
        arp_data[7]  <= 8'h01;               //操作码低字节：0x0001=请求，0x0002=应答
        arp_data[8]  <= BOARD_MAC[47:40];    //发送方（源）MAC地址
        arp_data[9]  <= BOARD_MAC[39:32];
        arp_data[10] <= BOARD_MAC[31:24];
        arp_data[11] <= BOARD_MAC[23:16];
        arp_data[12] <= BOARD_MAC[15:8];
        arp_data[13] <= BOARD_MAC[7:0];
        arp_data[14] <= BOARD_IP[31:24];     //发送方（源）IP地址
        arp_data[15] <= BOARD_IP[23:16];
        arp_data[16] <= BOARD_IP[15:8];
        arp_data[17] <= BOARD_IP[7:0];
        arp_data[18] <= DES_MAC[47:40];      //目标（目的）MAC地址
        arp_data[19] <= DES_MAC[39:32];
        arp_data[20] <= DES_MAC[31:24];
        arp_data[21] <= DES_MAC[23:16];
        arp_data[22] <= DES_MAC[15:8];
        arp_data[23] <= DES_MAC[7:0];
        arp_data[24] <= DES_IP[31:24];       //目标（目的）IP地址
        arp_data[25] <= DES_IP[23:16];
        arp_data[26] <= DES_IP[15:8];
        arp_data[27] <= DES_IP[7:0];
    end
    else begin
        skip_en    <= 1'b0;
        crc_en     <= 1'b0;
        gmii_tx_en <= 1'b0;
        tx_done_t  <= 1'b0;
        case(next_state)
            st_idle : begin
                if(pos_tx_en) begin
                    skip_en <= 1'b1;
                    //更新帧头和ARP载荷中的目的MAC/IP（来自arp_ctrl传入的动态值）
                    if((des_mac != 48'b0) || (des_ip != 32'd0)) begin
                        eth_head[0]  <= des_mac[47:40];
                        eth_head[1]  <= des_mac[39:32];
                        eth_head[2]  <= des_mac[31:24];
                        eth_head[3]  <= des_mac[23:16];
                        eth_head[4]  <= des_mac[15:8];
                        eth_head[5]  <= des_mac[7:0];
                        arp_data[18] <= des_mac[47:40];
                        arp_data[19] <= des_mac[39:32];
                        arp_data[20] <= des_mac[31:24];
                        arp_data[21] <= des_mac[23:16];
                        arp_data[22] <= des_mac[15:8];
                        arp_data[23] <= des_mac[7:0];
                        arp_data[24] <= des_ip[31:24];
                        arp_data[25] <= des_ip[23:16];
                        arp_data[26] <= des_ip[15:8];
                        arp_data[27] <= des_ip[7:0];
                    end
                    else;
                    //根据arp_tx_type设置ARP操作码
                    if(arp_tx_type == 1'b0)
                        arp_data[7] <= 8'h01;            //ARP请求
                    else
                        arp_data[7] <= 8'h02;            //ARP应答
                end
                else;
            end
            st_preamble : begin                          //发送前导码 + SFD（8字节）
                gmii_tx_en <= 1'b1;
                gmii_txd   <= preamble[cnt];
                if(cnt == 6'd7) begin
                    skip_en <= 1'b1;
                    cnt     <= 6'd0;
                end
                else
                    cnt <= cnt + 6'd1;
            end
            st_eth_head : begin                          //发送以太网帧头（14字节，同时启动CRC）
                gmii_tx_en <= 1'b1;
                crc_en     <= 1'b1;
                gmii_txd   <= eth_head[cnt];
                if (cnt == 6'd13) begin
                    skip_en <= 1'b1;
                    cnt     <= 6'd0;
                end
                else
                    cnt <= cnt + 6'd1;
            end
            st_arp_data : begin                          //发送ARP载荷（不足46字节末尾补0）
                crc_en     <= 1'b1;
                gmii_tx_en <= 1'b1;
                //cnt计数至MIN_DATA_NUM-1（45）完成
                if (cnt == MIN_DATA_NUM - 6'd1) begin
                    skip_en  <= 1'b1;
                    cnt      <= 6'd0;
                    data_cnt <= 5'd0;
                end
                else
                    cnt <= cnt + 6'd1;
                //data_cnt前28字节发送ARP载荷，之后补0（Padding）
                if(data_cnt <= 5'd27) begin
                    data_cnt <= data_cnt + 5'd1;
                    gmii_txd <= arp_data[data_cnt];
                end
                else
                    gmii_txd <= 8'd0;                    //超出28字节后补零填充
            end
            st_crc : begin                               //发送CRC32（4字节，小端位序）
                gmii_tx_en <= 1'b1;
                cnt        <= cnt + 6'd1;
                if(cnt == 6'd0)
                    gmii_txd <= {~crc_next[0], ~crc_next[1], ~crc_next[2], ~crc_next[3],
                                 ~crc_next[4], ~crc_next[5], ~crc_next[6], ~crc_next[7]};
                else if(cnt == 6'd1)
                    gmii_txd <= {~crc_data[16], ~crc_data[17], ~crc_data[18],
                                 ~crc_data[19], ~crc_data[20], ~crc_data[21],
                                 ~crc_data[22], ~crc_data[23]};
                else if(cnt == 6'd2) begin
                    gmii_txd <= {~crc_data[8],  ~crc_data[9],  ~crc_data[10],
                                 ~crc_data[11], ~crc_data[12], ~crc_data[13],
                                 ~crc_data[14], ~crc_data[15]};
                end
                else if(cnt == 6'd3) begin
                    gmii_txd <= {~crc_data[0], ~crc_data[1], ~crc_data[2], ~crc_data[3],
                                 ~crc_data[4], ~crc_data[5], ~crc_data[6], ~crc_data[7]};
                    tx_done_t <= 1'b1;
                    skip_en   <= 1'b1;
                    cnt       <= 6'd0;
                end
                else;
            end
            default :;
        endcase
    end
end

//将tx_done_t打一拍输出，并同步触发crc_clr清除CRC寄存器
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        tx_done <= 1'b0;
        crc_clr <= 1'b0;
    end
    else begin
        tx_done <= tx_done_t;
        crc_clr <= tx_done_t;
    end
end

endmodule
