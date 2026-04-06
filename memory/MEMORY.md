# QPSK FPGA Project - 核心记忆

## 项目概述
- **名称**: DICOM QPSK 图像传输系统
- **路径**: D:/FPGAProject/dicom_qpsk
- **详细规划**: [docs/QPSK_Image_Transmission_System_Plan.md](../docs/QPSK_Image_Transmission_System_Plan.md)

## 硬件规格

| 设备 | 芯片 | 规格 | 状态 |
|------|------|------|------|
| DAC | 3PD5651E | 10bit, 125 MSPS | ✅ TX端匹配 |
| ADC | 3PA1030 | 10bit, 50 MSPS | ⏳ RX端待开发 |

**关键参数**: 符号率6.25M，TX采样125MSPS(20x插值)，RX采样50MSPS(8x抽取)

## 系统架构

```
UDP数据 → FIFO → byte2symbol → qpsk_mapper → RRC滤波(20x) → 混频(12.5MHz) → DAC(125MSPS)
```

## Agent路由

| 查询类型 | Agent |
|---------|-------|
| 通信理论 | telecom-theory-expert |
| DSP算法 | dsp-communication-theorist |
| Verilog实现 | verilog-implementation-expert |
| 系统集成 | fpga-integration-lead |
| 项目协调 | project-orchestrator |

## 用户偏好
- 解释深度: 简洁
- 代码风格: 生产级
- 回复语言: 中文

## 当前状态
- TX端: ✅ 当前里程碑已收敛，QPSK发射链路可综合实现，125MSPS DAC链路匹配
- TX接线: 顶层当前使用 `data_gen` 驱动 `qpsk_tx`，UDP链路保留用于回环/FIFO验证
- 下一步: 将 `byte2symbol` 接回顶层，完成 `UDP -> QPSK` 真正联调
- RX端: ⏳ 待开发（50MSPS，需DDC/同步/解调）
- 阶段: 阶段1 - TX端里程碑冻结
