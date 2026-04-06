# DICOM QPSK 图像传输系统

基于FPGA的DICOM医学图像QPSK无线传输系统，实现UDP以太网数据接收、QPSK调制、脉冲成形和IF上变频。

## 项目概述

本项目设计了一个完整的QPSK发射机，用于将DICOM医学图像通过UDP网络传输到FPGA，经QPSK调制后输出12.5MHz中频信号驱动DAC。

### 系统架构

```
UDP数据包 → 异步FIFO → byte2symbol → QPSK映射 → RRC脉冲成形 → 上变频 → DAC输出
(125MHz)    (跨时钟域)   (6.25MHz)     (6.25MHz)    (125MSPS)      (125MSPS)   (125MSPS)
```

## 硬件平台

| 组件 | 型号 | 规格 |
|------|------|------|
| FPGA | Xilinx Artix-7 (正点原子达芬奇Pro) | 100T/200T |
| DAC | 3PD5651E | 125MSPS, 10bit, 双通道 |
| 以太网 | RTL8211FD | RGMII 1000Mbps |
| 参考时钟 | 50MHz有源晶振 | - |

## 系统参数

| 参数 | 数值 | 说明 |
|------|------|------|
| 符号率 | 6.25 Msymbol/s | QPSK符号速率 |
| 采样率 | 125 MSPS | DAC采样率，20倍过采样 |
| 载波频率 | 12.5 MHz | IF中频，fs/10 |
| RRC滚降系数 | 0.35 | 脉冲成形滤波器 |
| 数据速率 | 12.5 Mbps | UDP有效载荷速率 |

## 文件结构

```
dicom_qpsk/
├── dicom_qpsk.srcs/sources_1/new/    # Verilog RTL源码
│   ├── top.v                         # 顶层模块
│   ├── udp_top.v                     # UDP网络接口
│   ├── byte2symbol.v                 # 字节到符号转换
│   ├── qpsk_mapper.v                 # QPSK Gray编码映射
│   ├── qpsk_tx.v                     # QPSK发射机(含RRC、DDS、混频)
│   ├── eth_ctrl.v                    # 以太网控制
│   └── clk_dac.v                     # 时钟生成
├── dicom_qpsk.srcs/sources_1/ip/     # Xilinx IP核
│   ├── fir_rrc/                      # RRC脉冲成形滤波器
│   ├── dds_compiler_0/               # 12.5MHz载波DDS
│   ├── async_fifo_8b/                # 跨时钟域FIFO
│   ├── clk_wiz_0/                    # 时钟管理PLL
│   ├── mult_gen_0/                   # 乘法器
│   └── ila_0/                        # 逻辑分析仪
├── matlab/                           # MATLAB仿真
│   ├── qpsk_sim.m                    # QPSK调制仿真
│   ├── coe_gen.m                     # 滤波器系数生成
│   └── rrc_filter.coe                # RRC系数文件
├── scripts/                          # Python测试工具
│   ├── send_test.py                  # 交互式UDP测试工具
│   ├── udp_qpsk_test.py              # 持续发送测试
│   └── check_symbol_sequence.py      # Symbol序列验证
├── docs/                             # 项目文档
├── memory/                           # 系统记忆
└── .claude/                          # Agent系统配置
```

## 关键模块说明

### 1. byte2symbol.v
- 功能：将8-bit UDP数据转换为2-bit QPSK符号
- 时序：6.25MHz符号时钟
- 处理：1字节 = 4符号，LSB first
- 特性：支持连续数据预读，无间隙符号输出

### 2. qpsk_mapper.v
- Gray编码映射：
  - `00` → `(+127, +127)`
  - `01` → `(-127, +127)`
  - `11` → `(-127, -127)`
  - `10` → `(+127, -127)`

### 3. qpsk_tx.v
- RRC脉冲成形：20倍插值，321抽头
- DDS载波生成：12.5MHz正交载波
- 复数混频：IF = I·cos(ωt) - Q·sin(ωt)
- 输出：10bit无符号DAC数据

### 4. udp_top.v
- UDP接收：解析以太网帧，提取数据
- 网络参数：
  - 板卡IP: 192.168.1.10
  - 目标IP: 192.168.1.150
  - 端口: 8080

## 使用方法

### 1. 生成Bitstream

在Vivado中打开项目：
```bash
cd dicom_qpsk
vivado dicom_qpsk.xpr
```

运行Tcl脚本生成bitstream：
```tcl
source scripts/generate_bitstream.tcl
```

### 2. 下载到FPGA

使用Vivado Hardware Manager或命令行：
```bash
vivado -mode batch -source scripts/program_fpga.tcl
```

### 3. 发送测试数据

使用Python测试工具：

```bash
# 交互式测试工具
python scripts/send_test.py

# 或持续发送6.25M符号率数据
python scripts/udp_qpsk_test.py -c -t 10
```

**快速测试**（生成连续0,1,2,3符号序列）：
```bash
python -c "import socket; s=socket.socket(socket.AF_INET,socket.SOCK_DGRAM); s.sendto(bytes([0xE4]*1000),('192.168.1.10',8080))"
```

### 4. ILA调试

使用Vivado ILA观察关键信号：
- `probe0`: udp_rec_en (UDP接收使能)
- `probe1`: udp_rec_data (接收数据)
- `probe2`: fifo_empty (FIFO空标志)
- `probe3`: fifo_rd_en (FIFO读使能)
- `probe4`: fifo_rd_req (预读请求)
- `probe5`: fifo_dout (FIFO输出)
- `probe6`: symbol (QPSK符号)
- `probe7`: symbol_valid (符号有效)

## 验证结果

### MATLAB仿真
- 频谱纯度：ACLR > 40dBc
- EVM：< 5%（满足QPSK解调要求）
- 调制精度：理论值

### 硬件验证
- 载波频率：12.5MHz ± 1kHz
- 符号速率：6.25Msym/s
- 门控载波：无数据时IF输出≈0

## 常见问题

### Q: fifo_dout递增但symbol不是0,1,2,3顺序？
A: 这是正确的！LSB first模式下，字节0x00产生symbol序列0,0,0,0。要得到0,1,2,3序列，需发送0xE4（二进制11_10_01_00）。

### Q: 如何修改FPGA IP地址？
A: 在`udp_top.v`中修改`BOARD_IP`参数（第61行）。

### Q: 持续发送时如何达到精确6.25M符号率？
A: 使用`send_test.py`选项8，自动计算包大小和发送间隔，误差<0.1%。

## 开发计划

- [x] TX端RTL实现
- [x] MATLAB仿真验证
- [x] Bitstream生成
- [x] 硬件ILA验证
- [x] UDP数据联调
- [ ] RX端ADC接口开发（待开发）
- [ ] DDC/CIC抽取实现（待开发）
- [ ] Costas环载波恢复（待开发）
- [ ] Gardner符号同步（待开发）

## 技术文档

详细设计文档见：
- `docs/QPSK_Image_Transmission_System_Plan.md` - 系统规划
- `matlab/` - 仿真代码和结果
- `memory/MEMORY.md` - 项目记忆和关键参数

## 许可证

MIT License

## 作者

FPGA设计团队

---

**注意**: RX端接收机（ADC、DDC、同步）尚未开发，当前仅支持TX发射功能。
