# QPSK FPGA Project - Claude 配置

## 项目信息
- **名称**: DICOM QPSK 图像传输系统
- **路径**: D:/FPGAProject/dicom_qpsk
- **类型**: FPGA Verilog 项目

## 文件结构规范

| 目录 | 用途 | 说明 |
|------|------|------|
| `memory/` | Claude自动记忆 | 简洁摘要，每次会话加载 |
| `docs/` | 项目文档 | 详细规划，供人阅读 |
| `.claude/` | Agent系统配置 | 专家Agent定义 |

## 关键文件

- **[memory/MEMORY.md](memory/MEMORY.md)** - 核心记忆（硬件规格、当前状态）
- **[docs/QPSK_Image_Transmission_System_Plan.md](docs/QPSK_Image_Transmission_System_Plan.md)** - 完整项目规划
- **[matlab/](matlab/)** - MATLAB仿真脚本
- **[dicom_qpsk.srcs/sources_1/](dicom_qpsk.srcs/sources_1/)** - Verilog源码

## 硬件规格摘要
- **DAC**: 3PD5651E (125MSPS, 10bit) ✅ TX端匹配
- **ADC**: 3PA1030 (50MSPS, 10bit) ⏳ RX端待开发
