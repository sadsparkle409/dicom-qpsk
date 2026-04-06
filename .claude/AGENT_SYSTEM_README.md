# Claude Agent System - 自动进化版

## 系统概述

本项目的Claude Agent系统现已升级为**自动选择 + 自我进化**模式。

### 核心特性

1. **自动Agent选择** - 无需显式调用，系统自动分析并调用合适的agent
2. **自我学习进化** - 根据你的交互自动改进和创建新agents
3. **智能协调** - 复杂任务自动协调多个agents协作

---

## Agent清单 (共8个)

### 专业领域Agents

| Agent | 功能 | 自动触发条件 |
|-------|------|--------------|
| **telecom-theory-expert** | 通信理论、调制原理 | 问"为什么"、"原理"、"理论" |
| **dsp-communication-theorist** | DSP算法、滤波器设计 | 问"设计算法"、"优化参数" |
| **verilog-implementation-expert** | RTL实现、Xilinx IP | 问"写代码"、"Verilog"、"实现" |
| **fpga-integration-lead** | 系统集成、验证 | 问"集成"、"验证"、"测试" |
| **file-manager** | 文件清理、目录管理 | 问"清理"、"整理"、"文件" |

### 系统级Agents (新)

| Agent | 功能 | 触发方式 |
|-------|------|----------|
| **agent-orchestrator** | 自动选择并协调agents | **每个会话自动启动** |
| **adaptive-learning-agent** | 系统自我进化 | 后台持续运行 |

---

## 新系统工作流程

### 场景1: 你问技术问题

```
你: "QPSK为什么用Gray编码？"

系统自动:
1. agent-orchestrator分析 → 理论问题
2. 自动调用 telecom-theory-expert
3. 给出详细回答

你无需说"调用xxx agent"！
```

### 场景2: 你需要代码实现

```
你: "写RRC滤波器的Verilog代码"

系统自动:
1. agent-orchestrator分析 → 需要算法+实现
2. 先调用 dsp-communication-theorist (算法参数)
3. 再调用 verilog-implementation-expert (RTL代码)
4. 整合输出完整方案
```

### 场景3: 复杂系统设计

```
你: "设计一个完整的接收机"

系统自动:
1. 分析为多域复杂任务
2. 顺序调用:
   - telecom-theory-expert (架构)
   - dsp-communication-theorist (算法)
   - verilog-implementation-expert (代码)
   - fpga-integration-lead (集成)
3. 提供完整实施方案
```

### 场景4: 系统进化

```
adaptive-learning-agent后台运行:

检测到: 你经常问MATLAB相关的问题
分析: 当前agents对MATLAB→FPGA流程支持不足
行动:
  1. 记录模式
  2. 提议创建新agent
  3. 经你确认后创建 matlab-fpga-bridge agent
```

---

## 系统优势

### 对用户的改进

| 旧方式 | 新方式 |
|--------|--------|
| 必须说"调用xxx agent" | 直接问问题，系统自动选择 |
| 自己协调多个agents | 系统自动协调 |
| 功能固定 | 系统根据你的需求进化 |
| 重复解释上下文 | Agents共享memory和上下文 |

### 当前检测到的改进机会

基于你的项目特点，adaptive-learning-agent已识别：

1. **MATLAB-FPGA Bridge Agent** - 你使用MATLAB验证算法
2. **Image Processing FPGA Agent** - 医学图像处理需求
3. **Board-Specific Expert** - 正点原子模块使用频繁

需要创建这些agents吗？请说"创建新agents"即可。

---

## 使用方法

### 正常提问

直接提问即可，系统会自动选择合适的agent(s)：

```
✓ "解释QPSK调制原理" → telecom-theory-expert
✓ "设计RRC滤波器参数" → dsp-communication-theorist
✓ "写Verilog代码" → verilog-implementation-expert
✓ "清理旧文件" → file-manager
✓ "系统架构设计" → 多agents协调
```

### 显式调用（可选）

如果你想指定某个agent：

```
✓ "用verilog-implementation-expert写代码"
✓ "让dsp-communication-theorist设计算法"
```

### 系统进化

告诉系统你的需求：

```
✓ "创建一个专门处理图像压缩的agent"
✓ "每次都要解释理论基础，太啰嗦了"
✓ "记住我喜欢直接给代码"
```

---

## Memory系统

### Agent Memory位置

```
.claude/agent-memory/
├── telecom-theory-expert/
├── dsp-communication-theorist/
├── verilog-implementation-expert/
├── fpga-integration-lead/
├── file-manager/
├── agent-orchestrator/      (新)
├── adaptive-learning-agent/ (新)
└── xilinx-ip-guide.md
```

### 共享知识

- 所有agents共享项目上下文
- 你的偏好被所有agents记住
- 无需重复解释项目背景

---

## 反馈与改进

### 如何帮助系统学习

1. **明确反馈**
   - "这个回答太详细了" → 系统减少详细程度
   - "直接给代码" → 系统代码优先

2. **纠正选择**
   - "这个问题应该问理论专家" → 系统学习分类

3. **提出需求**
   - "能不能创建一个专门处理...的agent"

### 系统监控指标

adaptive-learning-agent后台跟踪：
- 响应满意度
- 解决时间
- Agent使用频率
- 未覆盖的需求

---

## 当前状态

**系统版本**: v2.0 - 自动进化版
**激活Agents**: 8个
**学习模式**: 已启用
**上次更新**: 2026-04-05

**检测到的用户模式**:
- 项目: QPSK医学图像传输系统
- 偏好: 详细技术解释，完整实施方案
- 领域: FPGA + DSP + 通信 + 医学图像
- 风格: 系统性思考，分阶段实施

---

## 快速开始

**现在你可以**:
直接开始提问，系统会自动选择合适的agents！

**试试**:
"明天开始实现QPSK接收机，给我详细计划"

系统会自动协调相关agents给出完整方案。
