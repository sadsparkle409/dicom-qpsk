module arp_rx
  #(
    //开发板MAC地址 00-11-22-33-44-55
    parameter BOARD_MAC = 48'h00_11_22_33_44_55,
    //开发板IP地址 192.168.1.10
    parameter BOARD_IP = {8'd192,8'd168,8'd1,8'd10}
    )
   (
    input                clk        , //时钟（gmii_rx_clk，125MHz）
    input                rst_n      , //复位信号，低电平有效

    input                gmii_rx_dv , //GMII接收数据有效信号
    input        [7:0]   gmii_rxd   , //GMII接收数据
    output  reg          arp_rx_done, //ARP接收完成信号（脉冲宽度1拍）
    output  reg          arp_rx_type, //ARP接收类型：0=请求，1=应答
    output  reg  [47:0]  src_mac    , //接收到的源MAC地址（锁存值）
    output  reg  [31:0]  src_ip       //接收到的源IP地址（锁存值）
    );

//parameter define
localparam  st_idle     = 5'b0_0001; //初始状态：等待前导码首字节(0x55)
localparam  st_preamble = 5'b0_0010; //前导码接收状态（7×0x55 + 1×0xD5）
localparam  st_eth_head = 5'b0_0100; //解析以太网帧头（目的MAC+源MAC+帧类型）
localparam  st_arp_data = 5'b0_1000; //解析ARP载荷数据
localparam  st_rx_end   = 5'b1_0000; //接收结束，等待帧间隙
localparam  ETH_TPYE    = 16'h0806 ; //ARP以太网帧类型字段

//reg define
reg    [4:0]   cur_state ;
reg    [4:0]   next_state;
reg            skip_en   ; //状态跳转使能（当前状态解析完成）
reg            error_en  ; //错误标志（帧格式不匹配，跳转至st_rx_end丢弃）
reg    [4:0]   cnt       ; //字节计数器
reg    [47:0]  des_mac_t ; //暂存目的MAC地址
reg    [31:0]  des_ip_t  ; //暂存目的IP地址
reg    [47:0]  src_mac_t ; //暂存源MAC地址
reg    [31:0]  src_ip_t  ; //暂存源IP地址
reg    [15:0]  eth_type  ; //以太网帧类型字段
reg    [15:0]  op_data   ; //ARP操作码：1=请求，2=应答

//*****************************************************
//**                    main code
//*****************************************************

//时序逻辑：同步状态转移
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        cur_state <= st_idle;
    else
        cur_state <= next_state;
end

//组合逻辑：次态计算（状态转移条件）
always @(*) begin
    next_state = st_idle;
    case(cur_state)
        st_idle : begin                     //等待前导码首字节
            if(skip_en)
                next_state = st_preamble;
            else
                next_state = st_idle;
        end
        st_preamble : begin                 //接收前导码（7×0x55 + SFD 0xD5）
            if(skip_en)
                next_state = st_eth_head;
            else if(error_en)
                next_state = st_rx_end;
            else
                next_state = st_preamble;
        end
        st_eth_head : begin                 //解析以太网帧头
            if(skip_en)
                next_state = st_arp_data;
            else if(error_en)
                next_state = st_rx_end;
            else
                next_state = st_eth_head;
        end
        st_arp_data : begin                 //解析ARP载荷
            if(skip_en)
                next_state = st_rx_end;
            else if(error_en)
                next_state = st_rx_end;
            else
                next_state = st_arp_data;
        end
        st_rx_end : begin                   //等待帧结束（gmii_rx_dv拉低）
            if(skip_en)
                next_state = st_idle;
            else
                next_state = st_rx_end;
        end
        default : next_state = st_idle;
    endcase
end

//时序逻辑：各状态下的数据解析与输出
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        skip_en   <= 1'b0;
        error_en  <= 1'b0;
        cnt       <= 5'd0;
        des_mac_t <= 48'd0;
        des_ip_t  <= 32'd0;
        src_mac_t <= 48'd0;
        src_ip_t  <= 32'd0;
        eth_type  <= 16'd0;
        op_data   <= 16'd0;
        arp_rx_done <= 1'b0;
        arp_rx_type <= 1'b0;
        src_mac   <= 48'd0;
        src_ip    <= 32'd0;
    end
    else begin
        skip_en     <= 1'b0;
        error_en    <= 1'b0;
        arp_rx_done <= 1'b0;
        case(next_state)
            st_idle : begin
                //检测前导码首字节0x55，触发状态跳转
                if((gmii_rx_dv == 1'b1) && (gmii_rxd == 8'h55))
                    skip_en <= 1'b1;
                else;
            end
            st_preamble : begin
                if(gmii_rx_dv) begin                         //接收前导码字节
                    cnt <= cnt + 5'd1;
                    if((cnt < 5'd6) && (gmii_rxd != 8'h55))  //前6字节应为0x55
                        error_en <= 1'b1;
                    else if(cnt==5'd6) begin
                        cnt <= 5'd0;
                        if(gmii_rxd==8'hd5)                  //第7字节应为SFD(0xD5)
                            skip_en <= 1'b1;
                        else
                            error_en <= 1'b1;
                    end
                    else;
                end
                else;
            end
            st_eth_head : begin
                if(gmii_rx_dv) begin
                    cnt <= cnt + 5'd1;
                    if(cnt < 5'd6)
                        des_mac_t <= {des_mac_t[39:0],gmii_rxd};  //逐字节拼接目的MAC地址
                    else if(cnt == 5'd6) begin
                        //验证目的MAC：需为本机MAC或广播地址
                        if((des_mac_t != BOARD_MAC)
                            && (des_mac_t != 48'hff_ff_ff_ff_ff_ff))
                            error_en <= 1'b1;
                    end
                    else if(cnt == 5'd12)
                        eth_type[15:8] <= gmii_rxd;              //帧类型高字节
                    else if(cnt == 5'd13) begin
                        eth_type[7:0] <= gmii_rxd;
                        cnt <= 5'd0;
                        //验证帧类型：必须为ARP（0x0806）
                        if(eth_type[15:8] == ETH_TPYE[15:8]
                            && gmii_rxd == ETH_TPYE[7:0])
                            skip_en <= 1'b1;
                        else
                            error_en <= 1'b1;
                    end
                    else;
                end
            end
            st_arp_data : begin
                if(gmii_rx_dv) begin
                    cnt <= cnt + 5'd1;
                    if(cnt == 5'd6)
                        op_data[15:8] <= gmii_rxd;               //ARP操作码高字节
                    else if(cnt == 5'd7)
                        op_data[7:0]  <= gmii_rxd;               //ARP操作码低字节
                    else if(cnt >= 5'd8 && cnt < 5'd14)           //发送方MAC地址（6字节）
                        src_mac_t <= {src_mac_t[39:0],gmii_rxd};
                    else if(cnt >= 5'd14 && cnt < 5'd18)          //发送方IP地址（4字节）
                        src_ip_t  <= {src_ip_t[23:0],gmii_rxd};
                    else if(cnt >= 5'd24 && cnt < 5'd28)          //目标IP地址（4字节）
                        des_ip_t  <= {des_ip_t[23:0],gmii_rxd};
                    else if(cnt == 5'd28) begin
                        cnt <= 5'd0;
                        //验证目标IP是否为本机IP
                        if(des_ip_t == BOARD_IP) begin
                            //操作码为1（请求）或2（应答）才处理
                            if((op_data == 16'd1) || (op_data == 16'd2)) begin
                                skip_en     <= 1'b1;
                                arp_rx_done <= 1'b1;
                                src_mac     <= src_mac_t;  //锁存源MAC
                                src_ip      <= src_ip_t;   //锁存源IP
                                src_mac_t   <= 48'd0;
                                src_ip_t    <= 32'd0;
                                des_mac_t   <= 48'd0;
                                des_ip_t    <= 32'd0;
                                if(op_data == 16'd1)
                                    arp_rx_type <= 1'b0;   //ARP请求
                                else
                                    arp_rx_type <= 1'b1;   //ARP应答
                            end
                            else
                                error_en <= 1'b1;
                        end
                        else
                            error_en <= 1'b1;
                    end
                    else;
                end
            end
            st_rx_end : begin
                cnt <= 5'd0;
                //等待gmii_rx_dv拉低（帧结束），然后返回空闲
                if(gmii_rx_dv == 1'b0 && skip_en == 1'b0)
                    skip_en <= 1'b1;
                else;
            end
            default : ;
        endcase
    end
end

endmodule
