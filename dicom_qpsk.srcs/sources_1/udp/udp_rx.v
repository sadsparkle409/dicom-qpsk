module udp_rx(
    input                clk         ,    //时钟
    input                rst_n       ,    //复位信号，低电平有效
    
    input                gmii_rx_dv  ,    //GMII接收数据有效信号
    input        [7:0]   gmii_rxd    ,    //GMII接收数据
    output  reg          rec_pkt_done,    //以太网单包数据接收完成信号
    output  reg          rec_en      ,    //以太网接收到数据使能信号
    output  reg  [7 :0]  rec_data    ,
    output  reg  [15:0]  rec_byte_num     //以太网接收到的有效字节数（单位:byte）
    );

//parameter define
//开发板MAC地址 00-11-22-33-44-55
parameter BOARD_MAC = 48'h00_11_22_33_44_55; 
//开发板IP地址 192.168.1.10 
parameter BOARD_IP = {8'd192,8'd168,8'd1,8'd10};

localparam  st_idle     = 7'b000_0001; //初始状态，等待前导码
localparam  st_preamble = 7'b000_0010; //接收前导码状态
localparam  st_eth_head = 7'b000_0100; //解析以太网帧头
localparam  st_ip_head  = 7'b000_1000; //解析IP头部
localparam  st_udp_head = 7'b001_0000; //解析UDP头部
localparam  st_rx_data  = 7'b010_0000; //接收有效数据
localparam  st_rx_end   = 7'b100_0000; //接收结束状态

localparam  ETH_TYPE    = 16'h0800   ; //以太网帧类型
localparam  UDP_TYPE    = 8'd17      ; //UDP协议类型

//reg define
reg  [6:0]   cur_state       ;
reg  [6:0]   next_state      ;
                             
reg          skip_en         ; //跳过标志
reg          error_en        ; //错误标志
reg  [4:0]   cnt             ; //计数器
reg  [47:0]  des_mac         ; //发送的目的MAC地址
reg  [15:0]  eth_type        ; //以太网类型
reg  [31:0]  des_ip          ; //发送的目的IP地址
reg  [5:0]   ip_head_byte_num; //解析IP头部
reg  [15:0]  udp_byte_num    ; //UDP
reg  [15:0]  data_byte_num   ; //锁存发送字节数
reg  [15:0]  data_cnt        ; //有效数据计数    

//*****************************************************
//**                    main code
//*****************************************************

//(式状态)同时状态转
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        cur_state <= st_idle;  
    else
        cur_state <= next_state;
end

//次态组合逻辑（状态转移）
always @(*) begin
    next_state = st_idle;
    case(cur_state)
        st_idle : begin                                     //空闲，等待
            if(skip_en) 
                next_state = st_preamble;
            else
                next_state = st_idle;    
        end
        st_preamble : begin                                 //前导码
            if(skip_en) 
                next_state = st_eth_head;
            else if(error_en) 
                next_state = st_rx_end;    
            else
                next_state = st_preamble;    
        end
        st_eth_head : begin                                 //以太网类型帧头
            if(skip_en) 
                next_state = st_ip_head;
            else if(error_en) 
                next_state = st_rx_end;
            else
                next_state = st_eth_head;           
        end  
        st_ip_head : begin                                  //解析IP头部
            if(skip_en)
                next_state = st_udp_head;
            else if(error_en)
                next_state = st_rx_end;
            else
                next_state = st_ip_head;       
        end 
        st_udp_head : begin                                 //UDP头部
            if(skip_en)
                next_state = st_rx_data;
            else
                next_state = st_udp_head;    
        end                
        st_rx_data : begin                                  //接收有效数据
            if(skip_en)
                next_state = st_rx_end;
            else
                next_state = st_rx_data;    
        end                           
        st_rx_end : begin                                   //接收结束
            if(skip_en)
                next_state = st_idle;
            else
                next_state = st_rx_end;          
        end
        default : next_state = st_idle;
    endcase                                          
end    

//时路状态,太
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        skip_en <= 1'b0;
        error_en <= 1'b0;
        cnt <= 5'd0;
        des_mac <= 48'd0;
        eth_type <= 16'd0;
        des_ip <= 32'd0;
        ip_head_byte_num <= 6'd0;
        udp_byte_num <= 16'd0;
        data_byte_num <= 16'd0;
        data_cnt <= 16'd0;
        rec_en <= 1'b0;
        rec_data <= 8'd0;
        rec_pkt_done <= 1'b0;
        rec_byte_num <= 16'd0;
    end
    else begin
        skip_en <= 1'b0;
        error_en <= 1'b0;  
        rec_pkt_done <= 1'b0;
        case(next_state)
            st_idle : begin
                if((gmii_rx_dv == 1'b1) && (gmii_rxd == 8'h55)) 
                    skip_en <= 1'b1;
            end
            st_preamble : begin
                if(gmii_rx_dv) begin                         //前导码
                    cnt <= cnt + 5'd1;
                    if((cnt < 5'd6) && (gmii_rxd != 8'h55))  //78'h55  
                        error_en <= 1'b1;
                    else if(cnt==5'd6) begin
                        cnt <= 5'd0;
                        if(gmii_rxd==8'hd5)                  //18'hd5
                            skip_en <= 1'b1;
                        else
                            error_en <= 1'b1;    
                    end  
                end  
            end
            st_eth_head : begin
                if(gmii_rx_dv) begin
                    cnt <= cnt + 5'b1;
                    if(cnt < 5'd6) 
                        des_mac <= {des_mac[39:0],gmii_rxd}; //目的MAC地址
                    else if(cnt == 5'd12) 
                        eth_type[15:8] <= gmii_rxd;          //GMII接收数据
                    else if(cnt == 5'd13) begin
                        eth_type[7:0] <= gmii_rxd;
                        cnt <= 5'd0;
                        //若目的MAC地址为本机MAC地址则接收
                        if(((des_mac == BOARD_MAC) ||(des_mac == 48'hff_ff_ff_ff_ff_ff))
                       && eth_type[15:8] == ETH_TYPE[15:8] && gmii_rxd == ETH_TYPE[7:0])            
                            skip_en <= 1'b1;
                        else
                            error_en <= 1'b1;
                    end        
                end  
            end
            st_ip_head : begin
                if(gmii_rx_dv) begin
                    cnt <= cnt + 5'd1;
                    if(cnt == 5'd0)
                        ip_head_byte_num <= {gmii_rxd[3:0],2'd0};
                    else if(cnt == 5'd9) begin
                        if(gmii_rxd != UDP_TYPE) begin
                            //当前帧非UDP协议，停止接收                        
                            error_en <= 1'b1;               
                            cnt <= 5'd0;                        
                        end
                    end                     
                    else if((cnt >= 5'd16) && (cnt <= 5'd18))
                        des_ip <= {des_ip[23:0],gmii_rxd};   //目的IP地址
                    else if(cnt == 5'd19) begin
                        des_ip <= {des_ip[23:0],gmii_rxd}; 
                        //若目的IP地址为本机IP地址则接收
                        if((des_ip[23:0] == BOARD_IP[31:8])
                            && (gmii_rxd == BOARD_IP[7:0])) begin                           
                                skip_en <=1'b1;                     
                                cnt <= 5'd0;                         
                        end    
                        else begin            
                        //IP停止                        
                            error_en <= 1'b1;               
                            cnt <= 5'd0;
                        end                                                  
                    end                          
                end                                
            end 
            st_udp_head : begin
                if(gmii_rx_dv) begin
                    cnt <= cnt + 5'd1;
                    if(cnt == 5'd4)
                        udp_byte_num[15:8] <= gmii_rxd;      //GMII接收数据
                    else if(cnt == 5'd5)
                        udp_byte_num[7:0] <= gmii_rxd;
                    else if(cnt == 5'd7) begin
                        //有效数据长度 = UDP总长度 - UDP头(8B)
                        data_byte_num <= udp_byte_num - 16'd8;
                        cnt <= 5'd0;
                        //如果payload为0字节，直接完成（跳到rx_end）
                        if(udp_byte_num <= 16'd8) begin
                            skip_en <= 1'b1;
                            rec_pkt_done <= 1'b1;
                            rec_byte_num <= 16'd0;
                        end
                        else begin
                            skip_en <= 1'b1;  //有payload，正常跳到st_rx_data
                        end
                    end
                end
            end          
            st_rx_data : begin
                //如果payload为0字节，直接结束（必须在gmii_rx_dv判断之外）
                if(data_byte_num == 16'd0) begin
                    skip_en <= 1'b1;
                    rec_pkt_done <= 1'b1;
                    rec_byte_num <= 16'd0;
                end
                else if(gmii_rx_dv) begin
                    data_cnt <= data_cnt + 16'd1;
                    rec_data <= gmii_rxd;
                    rec_en <= 1'b1; 
                    if(data_cnt == data_byte_num - 16'd1) begin
                        skip_en <= 1'b1;                    //有效数据接收完成
                        data_cnt <= 16'd0;
                        rec_pkt_done <= 1'b1;               
                        rec_byte_num <= data_byte_num;
                    end     
                end  
            end    
            st_rx_end : begin                               //数据接收完成   
                rec_en <= 1'b0;
                if(gmii_rx_dv == 1'b0 && skip_en == 1'b0)
                    skip_en <= 1'b1; 
            end    
            default : ;
        endcase                                                        
    end
end

endmodule