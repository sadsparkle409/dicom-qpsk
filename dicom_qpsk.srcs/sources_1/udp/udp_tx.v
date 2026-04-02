module udp_tx(    
    input                clk        , //时钟
    input                rst_n      , //复位信号，低电平有效
    
    input                tx_start_en, //以太网开始发送信号
    input        [ 7:0]  tx_data    , //以太网发送的数据
    input        [15:0]  tx_byte_num, //以太网发送的有效字节数（单位:byte）
    input        [47:0]  des_mac    , //发送的目的MAC地址
    input        [31:0]  des_ip     , //发送的目的IP地址
    input        [31:0]  crc_data   , //CRC校验数据
    input        [ 7:0]  crc_next   , //CRC下一拍校验数据（提前一拍获取）
    output  reg          tx_done    , //以太网发送完成信号
    output  reg          tx_req     , //数据请求信号
    output  reg          gmii_tx_en , //GMII发送数据有效信号
    output  reg  [7:0]   gmii_txd   , //GMII发送数据
    output  reg          crc_en     , //CRC校验开始使能
    output  reg          crc_clr      //CRC数据清除
    );

//parameter define
//开发板MAC地址 00-11-22-33-44-55
parameter BOARD_MAC = 48'h00_11_22_33_44_55;
//开发板IP地址 192.168.1.123     
parameter BOARD_IP  = {8'd192,8'd168,8'd1,8'd123}; 
//目的MAC地址 ff:ff:ff:ff:ff:ff
parameter  DES_MAC  = 48'hff_ff_ff_ff_ff_ff;
//目的IP地址 192.168.1.102     
parameter  DES_IP   = {8'd192,8'd168,8'd1,8'd102};

localparam  st_idle      = 7'b000_0001; //初始状态，等待前导码
localparam  st_check_sum = 7'b000_0010; //解析IP头部校
localparam  st_preamble  = 7'b000_0100; //接收前导码状态
localparam  st_eth_head  = 7'b000_1000; //解析以太网帧头
localparam  st_ip_head   = 7'b001_0000; //解析IP头部+UDP头部
localparam  st_tx_data   = 7'b010_0000; //
localparam  st_crc       = 7'b100_0000; //CRC校验

localparam  ETH_TYPE     = 16'h0800  ;  //以太网帧类型
//以太网最小帧46B：IP头20B+UDP头8B=28B，最小用户数据18B
//最小用户数据18字节
localparam  MIN_DATA_NUM = 16'd18    ;    

//reg define
reg  [6:0]   cur_state      ;
reg  [6:0]   next_state     ;        
reg  [7:0]   preamble[7:0]  ; //前导码
reg  [7:0]   eth_head[13:0] ; //以太网帧头
reg  [31:0]  ip_head[6:0]   ; //解析IP头部+UDP头部
reg          start_en_d0    ;
reg          start_en_d1    ;
reg          start_en_d2    ;
reg  [15:0]  tx_data_num    ; //锁存有效字节数
reg  [15:0]  total_num      ; //总字节数
reg          trig_tx_en     ;
reg  [15:0]  udp_num        ; //UDP长度字段
reg          skip_en        ; //跳过标志
reg  [4:0]   cnt            ;
reg  [31:0]  check_buffer   ; //头部校验和缓冲
reg  [1:0]   tx_bit_sel     ;
reg  [15:0]  data_cnt       ; //计数器
reg          tx_done_t      ;
reg  [4:0]   real_add_cnt   ; //以太网类型字节计数
                                    
//wire define                       
wire         pos_start_en    ;//tx_start_en上升沿脉冲
wire [15:0]  real_tx_data_num;//实际发送数据长度（不足最小帧长则补至最小值）
//*****************************************************
//**                    main code
//*****************************************************

assign  pos_start_en = (~start_en_d2) & start_en_d1;
assign  real_tx_data_num = (tx_data_num >= MIN_DATA_NUM) 
                           ? tx_data_num : MIN_DATA_NUM; 
                           
//tx_start_en
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        start_en_d0 <= 1'b0;
        start_en_d1 <= 1'b0;
        start_en_d2 <= 1'b0;
    end    
    else begin
        start_en_d0 <= tx_start_en;
        start_en_d1 <= start_en_d0;
        start_en_d2 <= start_en_d1;
    end
end 

//计算有效字节数
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        tx_data_num <= 16'd0;
        total_num <= 16'd0;
        udp_num <= 16'd0;
    end
    else begin
        if(pos_start_en && cur_state==st_idle) begin
            //锁存发送字节数
            tx_data_num <= tx_byte_num;        
            //IP载荷长度+IP头部            
            total_num <= tx_byte_num + 16'd28;  
            //UDP总长度 = 有效数据+UDP头(8B)            
            udp_num <= tx_byte_num + 16'd8;               
        end   
        else ;
    end
end

//触发发送使能
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) 
        trig_tx_en <= 1'b0;
    else
        trig_tx_en <= pos_start_en;

end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        cur_state <= st_idle;  
    else
        cur_state <= next_state;
end

always @(*) begin
    next_state = st_idle;
    case(cur_state)
        st_idle     : begin                               //空闲，等待
            if(skip_en)                
                next_state = st_check_sum;
            else
                next_state = st_idle;
        end  
        st_check_sum: begin                               //解析IP头部校
            if(skip_en)
                next_state = st_preamble;
            else
                next_state = st_check_sum;    
        end                             
        st_preamble : begin                               //前导码+帧始缍
            if(skip_en)
                next_state = st_eth_head;
            else
                next_state = st_preamble;      
        end
        st_eth_head : begin                               //以太网帧头
            if(skip_en)
                next_state = st_ip_head;
            else
                next_state = st_eth_head;      
        end              
        st_ip_head : begin                                //解析IP头部+UDP头部               
            if(skip_en)
                next_state = st_tx_data;
            else
                next_state = st_ip_head;      
        end
        st_tx_data : begin                                //                  
            if(skip_en)
                next_state = st_crc;
            else
                next_state = st_tx_data;      
        end
        st_crc: begin                                     //CRC校验
            if(skip_en)
                next_state = st_idle;
            else
                next_state = st_crc;      
        end
        default : next_state = st_idle;   
    endcase
end                      

//
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        skip_en <= 1'b0; 
        cnt <= 5'd0;
        check_buffer <= 32'd0;
        ip_head[1][31:16] <= 16'd0;
        tx_bit_sel <= 2'b0;
        crc_en <= 1'b0;
        gmii_tx_en <= 1'b0;
        gmii_txd <= 8'd0;
        tx_req <= 1'b0;
        tx_done_t <= 1'b0; 
        data_cnt <= 16'd0;
        real_add_cnt <= 5'd0;
        //tx_start_en上升沿脉冲    
        //前导码 78'h55 + 18'hd5
        preamble[0] <= 8'h55;                 
        preamble[1] <= 8'h55;
        preamble[2] <= 8'h55;
        preamble[3] <= 8'h55;
        preamble[4] <= 8'h55;
        preamble[5] <= 8'h55;
        preamble[6] <= 8'h55;
        preamble[7] <= 8'hd5;
        //目的MAC地址
        eth_head[0] <= DES_MAC[47:40];
        eth_head[1] <= DES_MAC[39:32];
        eth_head[2] <= DES_MAC[31:24];
        eth_head[3] <= DES_MAC[23:16];
        eth_head[4] <= DES_MAC[15:8];
        eth_head[5] <= DES_MAC[7:0];
        //源MAC地址
        eth_head[6] <= BOARD_MAC[47:40];
        eth_head[7] <= BOARD_MAC[39:32];
        eth_head[8] <= BOARD_MAC[31:24];
        eth_head[9] <= BOARD_MAC[23:16];
        eth_head[10] <= BOARD_MAC[15:8];
        eth_head[11] <= BOARD_MAC[7:0];
        //以太网类型
        eth_head[12] <= ETH_TYPE[15:8];
        eth_head[13] <= ETH_TYPE[7:0];        
    end
    else begin
        skip_en <= 1'b0;
        crc_en <= 1'b0;
        gmii_tx_en <= 1'b0;
        tx_done_t <= 1'b0;
        case(next_state)
            st_idle     : begin
                if(trig_tx_en) begin
                    skip_en <= 1'b1; 
                    //IP头部共4字节×5组（20byte/4=5，32bit对齐）
                    ip_head[0] <= {8'h45,8'h00,total_num};   
                    //16位识每畏奂1      
                    ip_head[1][31:16] <= ip_head[1][31:16] + 1'b1; 
                    //bit[15:13]: 010示片
                    ip_head[1][15:0] <= 16'h4000;    
                    //上层协议号17（UDP）                  
                    ip_head[2] <= {8'h40,8'd17,16'h0};   
                    //源IP地址               
                    ip_head[3] <= BOARD_IP;
                    //目的IP地址    
                    if(des_ip != 32'd0)
                        ip_head[4] <= des_ip;
                    else
                        ip_head[4] <= DES_IP;       
                        //16位源端口号=1234，16位目的端口号=1234                      
                        ip_head[5] <= {16'd1234,16'd1234};  
                        //16位UDP长度，16位UDP校验和              
                        ip_head[6] <= {udp_num,16'h0000};  
                        //MAC地址
                    if(des_mac != 48'b0) begin
                        //目的MAC地址
                        eth_head[0] <= des_mac[47:40];
                        eth_head[1] <= des_mac[39:32];
                        eth_head[2] <= des_mac[31:24];
                        eth_head[3] <= des_mac[23:16];
                        eth_head[4] <= des_mac[15:8];
                        eth_head[5] <= des_mac[7:0];
                    end
                    else ;
                end   
                else ;
            end                                                       
            st_check_sum: begin                           //解析IP头部校
                cnt <= cnt + 5'd1;
                if(cnt == 5'd0) begin                   
                    check_buffer <= ip_head[0][31:16] + ip_head[0][15:0]
                                    + ip_head[1][31:16] + ip_head[1][15:0]
                                    + ip_head[2][31:16] + ip_head[2][15:0]
                                    + ip_head[3][31:16] + ip_head[3][15:0]
                                    + ip_head[4][31:16] + ip_head[4][15:0];
                end
                else if(cnt == 5'd1)                      //第一个字节，移入高位
                    check_buffer <= check_buffer[31:16] + check_buffer[15:0];
                else if(cnt == 5'd2) begin                //第二个字节，移入次高位
                    check_buffer <= check_buffer[31:16] + check_buffer[15:0];
                end                             
                else if(cnt == 5'd3) begin                //位取 
                    skip_en <= 1'b1;
                    cnt <= 5'd0;            
                    ip_head[2][15:0] <= ~check_buffer[15:0];
                end 
                else ;
            end              
            st_preamble : begin                           //前导码+帧始缍
                gmii_tx_en <= 1'b1;
                gmii_txd <= preamble[cnt];
                if(cnt == 5'd7) begin                        
                    skip_en <= 1'b1;
                    cnt <= 5'd0;    
                end
                else    
                    cnt <= cnt + 5'd1;                     
            end
            st_eth_head : begin                           //以太网帧头
                gmii_tx_en <= 1'b1;
                crc_en <= 1'b1;
                gmii_txd <= eth_head[cnt];
                if (cnt == 5'd13) begin
                    skip_en <= 1'b1;
                    cnt <= 5'd0;
                end    
                else    
                    cnt <= cnt + 5'd1;    
            end                    
            st_ip_head  : begin                           //解析IP头部+UDP头部
                crc_en <= 1'b1;
                gmii_tx_en <= 1'b1;
                tx_bit_sel <= tx_bit_sel + 2'd1;
                if(tx_bit_sel == 2'd0)
                    gmii_txd <= ip_head[cnt][31:24];
                else if(tx_bit_sel == 2'd1)
                    gmii_txd <= ip_head[cnt][23:16];
                else if(tx_bit_sel == 2'd2) begin
                    gmii_txd <= ip_head[cnt][15:8];
                    if(cnt == 5'd6) begin
                        //仅在payload>0时拉高tx_req，避免0字节包误读FIFO
                        if(tx_data_num > 16'd0)
                            tx_req <= 1'b1;
                    end
                end 
                else if(tx_bit_sel == 2'd3) begin
                    gmii_txd <= ip_head[cnt][7:0];  
                    if(cnt == 5'd6) begin
                        skip_en <= 1'b1;   
                        cnt <= 5'd0;
                    end    
                    else
                        cnt <= cnt + 5'd1;  
                end 
                else ;
            end
            st_tx_data  : begin                           //
                crc_en <= 1'b1;
                gmii_tx_en <= 1'b1;
                tx_bit_sel <= tx_bit_sel + 2'd1;
                //0字节payload：只发送填充(0x00)
                if(tx_data_num == 16'd0) begin
                    gmii_txd <= 8'd0;
                    if(real_add_cnt < real_tx_data_num - 16'd1)
                        real_add_cnt <= real_add_cnt + 5'd1;
                    else begin
                        skip_en <= 1'b1;
                        real_add_cnt <= 5'd0;
                        tx_bit_sel <= 2'd0;
                    end
                end
                //非0payload：正常发送
                else begin
                    gmii_txd <= tx_data;
                    if(data_cnt + 16'd1 < tx_data_num)
                        data_cnt <= data_cnt + 16'd1;
                    else if(data_cnt + 16'd1 == tx_data_num)begin
                        if(data_cnt + real_add_cnt < real_tx_data_num - 16'd1)
                            real_add_cnt <= real_add_cnt + 5'd1;
                        else begin
                            skip_en <= 1'b1;
                            data_cnt <= 16'd0;
                            real_add_cnt <= 5'd0;
                            tx_bit_sel <= 2'd0;
                        end
                    end
                    else ;
                    //提前1字节拉低tx_req
                    if(data_cnt == tx_data_num - 16'd2)
                        tx_req <= 1'b0;
                    else ;
                end
            end
            st_crc      : begin                          //CRC校验
                gmii_tx_en <= 1'b1;
                tx_bit_sel <= tx_bit_sel + 2'd1;
                tx_req <= 1'b0;  
                if(tx_bit_sel == 2'd0)
                    gmii_txd <= {~crc_next[0], ~crc_next[1], ~crc_next[2],~crc_next[3],
                                 ~crc_next[4], ~crc_next[5], ~crc_next[6],~crc_next[7]};
                else if(tx_bit_sel == 2'd1)
                    gmii_txd <= {~crc_data[16], ~crc_data[17], ~crc_data[18],~crc_data[19],
                                 ~crc_data[20], ~crc_data[21], ~crc_data[22],~crc_data[23]};
                else if(tx_bit_sel == 2'd2) begin
                    gmii_txd <= {~crc_data[8], ~crc_data[9], ~crc_data[10],~crc_data[11],
                                 ~crc_data[12], ~crc_data[13], ~crc_data[14],~crc_data[15]};                              
                end
                else if(tx_bit_sel == 2'd3) begin
                    gmii_txd <= {~crc_data[0], ~crc_data[1], ~crc_data[2],~crc_data[3],
                                 ~crc_data[4], ~crc_data[5], ~crc_data[6],~crc_data[7]};  
                    tx_done_t <= 1'b1;
                    skip_en <= 1'b1;
                end 
                else ;
            end                          
            default :;  
        endcase                                             
    end
end            

//CRC值低字节翻转输出
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