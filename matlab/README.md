# QPSK 调制 MATLAB 仿真

## 文件说明

| 文件 | 功能 |
|------|------|
| `qpsk_sim.m` | 完整的 QPSK 调制链路仿真，包含时域波形和频谱 |
| `qpsk_spectrum_analysis.m` | 专注频谱分析，展示 10 个载波周期和详细频谱 |

## 系统参数

- **采样率**: 125 MHz
- **符号率**: 6.25 MHz
- **载波频率**: 12.5 MHz
- **过采样比**: 20x

## 信号流

```
QPSK Symbol (00/01/11/10)
    ↓
qpsk_mapper: (+/-127, +/-127)
    ↓
RRC Filter (20x upsampling)
    ↓
DDS: cos(12.5MHz), sin(12.5MHz)
    ↓
i_mix = I × cos
q_mix = Q × sin
    ↓
IF = i_mix - q_mix
```

## 使用方法

### 1. 基本仿真
```matlab
run('qpsk_sim.m')
```
生成:
- 时域波形（10个载波周期）
- 基带和IF频谱
- QPSK星座图

### 2. 频谱分析
```matlab
run('qpsk_spectrum_analysis.m')
```
生成:
- i_mix, q_mix, IF 的时域波形（10个周期）
- 各信号分量的频谱
- 12.5MHz 载波附近的详细频谱

## 关键验证点

### 时域验证
- 10个载波周期 = 0.8 μs (10 / 12.5MHz)
- IF信号应显示12.5MHz的调制波形

### 频域验证
- IF频谱峰值应在 **12.5 MHz**
- 边带位置：12.5 ± 6.25 MHz
- 如果看到6.25MHz峰值，说明DDS配置错误

## FPGA 与 MATLAB 对应关系

| MATLAB 变量 | FPGA 模块 | 说明 |
|------------|----------|------|
| `i_base`, `q_base` | `qpsk_mapper` | QPSK映射后的基带 |
| `rrc_filter` | `fir_rrc` | RRC脉冲成形 |
| `cos_wave`, `sin_wave` | `dds_compiler` | 12.5MHz载波 |
| `i_mix` | `u_mult_i` | I路混频 |
| `q_mix` | `u_mult_q` | Q路混频 |
| `if_signal` | `if_temp` | IF输出 |
