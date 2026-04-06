#!/usr/bin/env python3
"""
UDP QPSK Test - 交互式测试工具
双击运行，菜单选择测试模式
"""

import socket
import time
import sys
import os
from datetime import datetime

# FPGA配置
FPGA_IP = "192.168.1.10"
FPGA_PORT = 8080

# 全局socket
sock = None

def clear_screen():
    """清屏"""
    os.system('cls' if os.name == 'nt' else 'clear')

def print_header():
    """打印标题"""
    print("=" * 60)
    print("         UDP QPSK FPGA 测试工具")
    print("=" * 60)
    print(f"  FPGA地址: {FPGA_IP}:{FPGA_PORT}")
    print(f"  符号率: 6.25 Msymbol/s")
    print("=" * 60)

def init_socket():
    """初始化网络连接"""
    global sock
    try:
        if sock:
            sock.close()
        sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        sock.settimeout(2.0)
        return True
    except Exception as e:
        print(f"错误: 无法创建网络连接 - {e}")
        return False

def send_bytes(data, desc=""):
    """发送字节数据"""
    try:
        sock.sendto(data, (FPGA_IP, FPGA_PORT))
        print(f"  ✓ 已发送 {len(data)} 字节", end="")
        if desc:
            print(f" ({desc})")
        else:
            print()
        return True
    except Exception as e:
        print(f"  ✗ 发送失败: {e}")
        return False

def byte_to_symbols(byte):
    """计算字节对应的symbol序列"""
    return [
        byte & 0x03,
        (byte >> 2) & 0x03,
        (byte >> 4) & 0x03,
        (byte >> 6) & 0x03
    ]

def wait_key():
    """等待按键"""
    try:
        input("\n按回车键继续...")
    except:
        pass

# ==================== 测试模式 ====================

def test_incremental():
    """测试1: 递增序列"""
    print("\n【测试1】递增序列 (0x00, 0x01, 0x02, ...)")
    print("-" * 50)
    data = bytes(range(256))
    send_bytes(data, "0x00-0xFF")
    print("\n预期symbol序列:")
    print("  0,0,0,0, 1,0,0,0, 2,0,0,0, 3,0,0,0, 0,1,0,0, 1,1,0,0...")
    print("\n说明: 每个字节展开为4个symbols，低位在前")

def test_gray_sequence():
    """测试2: 连续0,1,2,3序列"""
    print("\n【测试2】连续0,1,2,3序列")
    print("-" * 50)
    print("发送字节: 0xE4 (二进制: 11_10_01_00)")
    print("symbol提取: [1:0]=0, [3:2]=1, [5:4]=2, [7:6]=3")
    data = bytes([0xE4] * 200)
    send_bytes(data, "0xE4 x 200")
    print("\n预期symbol序列: 0,1,2,3, 0,1,2,3, 0,1,2,3...")

def test_fixed_symbol(sym_val):
    """测试3-6: 固定symbol"""
    symbol_names = {0: "0", 1: "1", 2: "2", 3: "3"}
    byte_values = {0: 0x00, 1: 0x55, 2: 0xAA, 3: 0xFF}
    byte_names = {0: "0x00", 1: "0x55", 2: "0xAA", 3: "0xFF"}

    print(f"\n【测试】固定symbol {symbol_names[sym_val]}")
    print("-" * 50)
    print(f"发送字节: {byte_names[sym_val]} (二进制: {byte_values[sym_val]:08b})")

    data = bytes([byte_values[sym_val]] * 100)
    send_bytes(data, f"{byte_names[sym_val]} x 100")
    print(f"\n预期symbol序列: {sym_val},{sym_val},{sym_val},{sym_val}...")

def test_short_sequence():
    """测试7: 短序列详细显示"""
    print("\n【测试7】短序列详细对应关系")
    print("-" * 50)
    data = bytes([0, 1, 2, 3])
    send_bytes(data, "0x00,0x01,0x02,0x03")

    print("\n详细symbol对应:")
    print(f"{'字节':>6} | {'二进制':>10} | {'Bit[1:0]':>8} | {'Bit[3:2]':>8} | {'Bit[5:4]':>8} | {'Bit[7:6]':>8}")
    print("-" * 70)
    for b in data:
        syms = byte_to_symbols(b)
        print(f"0x{b:02X}   | {b:08b}   | {syms[0]:>8} | {syms[1]:>8} | {syms[2]:>8} | {syms[3]:>8}")

def test_continuous():
    """测试8: 持续发送 - 精确6.25M符号率"""
    print("\n【测试8】持续发送模式 (精确6.25M符号率)")
    print("-" * 50)

    # 6.25M符号率参数
    SYMBOL_RATE = 6.25e6              # 6.25 Msymbol/s
    SYMBOLS_PER_BYTE = 4              # 每字节4个symbols
    BYTE_RATE = SYMBOL_RATE / SYMBOLS_PER_BYTE  # 1.5625 MB/s = 1562500 bytes/s

    print(f"目标符号率: {SYMBOL_RATE/1e6:.2f} Msymbol/s")
    print(f"目标字节率: {BYTE_RATE/1e6:.4f} MB/s")
    print()
    print("选择发送模式:")
    print("  1. 递增序列 (0x00-0xFF循环)")
    print("  2. 固定0xE4 (0,1,2,3循环)")
    print("  3. 固定0x00 (全0)")
    print("  4. 固定0xFF (全3)")
    print("  5. 固定0x55 (全1)")
    print("  6. 固定0xAA (全2)")

    try:
        mode = input("\n选择(1-6): ").strip()
        duration = input("发送时长(秒,默认5): ").strip()
        duration = float(duration) if duration else 5.0
    except:
        print("输入错误，使用默认设置")
        mode = "1"
        duration = 5.0

    # 计算包大小：尽量接近MTU，使得包间隔合理
    # MTU = 1400字节 (用户网络限制)
    MTU = 1400
    # 目标：包间隔约1ms
    PACKET_INTERVAL = 0.001  # 1ms
    PACKET_SIZE = int(BYTE_RATE * PACKET_INTERVAL)  # 约1562字节
    # 限制在MTU内
    if PACKET_SIZE > MTU:
        PACKET_SIZE = MTU
    # 对齐到4字节边界（每个字节4个symbols，保持symbol整数周期）
    PACKET_SIZE = (PACKET_SIZE // 4) * 4
    if PACKET_SIZE < 4:
        PACKET_SIZE = 4

    # 重新计算实际的包间隔
    actual_interval = PACKET_SIZE / BYTE_RATE

    print(f"\n包大小: {PACKET_SIZE} 字节")
    print(f"包间隔: {actual_interval*1000:.3f} ms")
    print(f"每秒包数: {1/actual_interval:.1f}")

    pattern_map = {
        "1": (lambda: bytes([i % 256 for i in range(PACKET_SIZE)]), "递增序列"),
        "2": (lambda: bytes([0xE4] * PACKET_SIZE), "0xE4序列(0,1,2,3循环)"),
        "3": (lambda: bytes([0x00] * PACKET_SIZE), "全0序列"),
        "4": (lambda: bytes([0xFF] * PACKET_SIZE), "全0xFF序列"),
        "5": (lambda: bytes([0x55] * PACKET_SIZE), "全0x55序列"),
        "6": (lambda: bytes([0xAA] * PACKET_SIZE), "全0xAA序列"),
    }

    if mode not in pattern_map:
        mode = "1"

    gen_func, desc = pattern_map[mode]

    print(f"\n开始持续发送: {desc}")
    print(f"时长: {duration}秒")
    print("按Ctrl+C可提前停止")
    print("-" * 50)

    # 预生成数据
    data = gen_func()

    start_time = time.perf_counter()
    next_send_time = start_time
    end_time = start_time + duration
    packet_count = 0
    byte_count = 0
    last_report_time = start_time

    try:
        while time.perf_counter() < end_time:
            # 等待到精确的发送时间
            now = time.perf_counter()
            wait_time = next_send_time - now
            if wait_time > 0:
                time.sleep(wait_time)

            # 发送数据
            sock.sendto(data, (FPGA_IP, FPGA_PORT))
            packet_count += 1
            byte_count += PACKET_SIZE

            # 计算下一个发送时间
            next_send_time += actual_interval

            # 每100ms报告一次
            now = time.perf_counter()
            if now - last_report_time >= 0.1:
                elapsed = now - start_time
                actual_byte_rate = byte_count / elapsed
                actual_symbol_rate = actual_byte_rate * 4 / 1e6
                error_percent = (actual_symbol_rate - SYMBOL_RATE/1e6) / (SYMBOL_RATE/1e6) * 100

                print(f"\r  已发送: {packet_count}包 | "
                      f"符号率: {actual_symbol_rate:.3f}Msym/s | "
                      f"误差: {error_percent:+.2f}% | "
                      f"剩余: {end_time-now:.1f}s", end="", flush=True)

                last_report_time = now

    except KeyboardInterrupt:
        print("\n\n用户中断")
    finally:
        elapsed = time.perf_counter() - start_time
        if elapsed > 0:
            avg_byte_rate = byte_count / elapsed
            avg_symbol_rate = avg_byte_rate * 4 / 1e6

            print(f"\n\n发送完成!")
            print(f"  总时间: {elapsed:.3f}秒")
            print(f"  总包数: {packet_count}")
            print(f"  总字节: {byte_count:,}")
            print(f"  总符号: {byte_count * 4:,}")
            print(f"  平均符号率: {avg_symbol_rate:.4f} Msymbol/s")
            print(f"  目标符号率: {SYMBOL_RATE/1e6:.4f} Msymbol/s")
            print(f"  误差: {(avg_symbol_rate - SYMBOL_RATE/1e6)/(SYMBOL_RATE/1e6)*100:.3f}%")

def custom_test():
    """自定义测试"""
    print("\n【自定义测试】")
    print("-" * 50)

    try:
        hex_input = input("输入十六进制字节(如: E4, 00 01 02 03, FF): ").strip()
        count = input("重复次数(默认10): ").strip()
        count = int(count) if count else 10
    except:
        print("输入错误")
        return

    # 解析十六进制
    try:
        hex_bytes = []
        for h in hex_input.split():
            h = h.replace("0x", "").replace("0X", "")
            hex_bytes.append(int(h, 16))

        if not hex_bytes:
            print("无有效数据")
            return

        data = bytes(hex_bytes * count)

        print(f"\n发送: {' '.join(f'0x{b:02X}' for b in hex_bytes)}")
        print(f"重复: {count}次, 共{len(data)}字节")

        send_bytes(data)

        # 显示预期symbol
        print("\n预期symbol序列:")
        symbols = []
        for b in hex_bytes:
            syms = byte_to_symbols(b)
            symbols.extend(syms)
        print(f"  每周期: {symbols}")
        print(f"  重复{count}次")

    except Exception as e:
        print(f"错误: {e}")

# ==================== 主菜单 ====================

def main_menu():
    """显示主菜单"""
    while True:
        clear_screen()
        print_header()

        print("\n请选择测试模式:")
        print()
        print("  1. 递增序列 (0x00-0xFF)")
        print("  2. 连续0,1,2,3序列 (0xE4)")
        print("  3. 固定symbol 0 (0x00)")
        print("  4. 固定symbol 1 (0x55)")
        print("  5. 固定symbol 2 (0xAA)")
        print("  6. 固定symbol 3 (0xFF)")
        print("  7. 短序列详细显示")
        print("  8. 持续发送模式")
        print("  9. 自定义测试")
        print()
        print("  0. 退出")
        print()
        print("-" * 60)

        try:
            choice = input("请输入选项(0-9): ").strip()
        except:
            choice = "0"

        if choice == "0":
            print("\n再见!")
            break

        elif choice == "1":
            test_incremental()
            wait_key()

        elif choice == "2":
            test_gray_sequence()
            wait_key()

        elif choice == "3":
            test_fixed_symbol(0)
            wait_key()

        elif choice == "4":
            test_fixed_symbol(1)
            wait_key()

        elif choice == "5":
            test_fixed_symbol(2)
            wait_key()

        elif choice == "6":
            test_fixed_symbol(3)
            wait_key()

        elif choice == "7":
            test_short_sequence()
            wait_key()

        elif choice == "8":
            test_continuous()
            wait_key()

        elif choice == "9":
            custom_test()
            wait_key()

        else:
            print("\n无效选项")
            time.sleep(0.5)

# ==================== 主程序 ====================

if __name__ == "__main__":
    try:
        if init_socket():
            main_menu()
        else:
            input("按回车键退出...")
    except KeyboardInterrupt:
        print("\n\n程序被中断")
    finally:
        if sock:
            sock.close()
