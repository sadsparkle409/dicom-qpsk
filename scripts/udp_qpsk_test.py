#!/usr/bin/env python3
"""
UDP QPSK Test Sender - Continuous Mode
功能：以6.25M符号率持续发送UDP数据到FPGA

符号率: 6.25M symbol/s
字节率: 6.25M / 4 = 1.5625 MB/s
"""

import socket
import struct
import time
import argparse
import signal
import sys
from threading import Event

# 配置参数
FPGA_IP = "192.168.1.10"
FPGA_PORT = 8080

# 6.25M符号率参数
SYMBOL_RATE = 6.25e6              # 6.25 MHz
SYMBOLS_PER_BYTE = 4              # 每字节4个symbols
BYTE_RATE = SYMBOL_RATE / SYMBOLS_PER_BYTE  # 1.5625 MB/s

# 网络参数
MTU = 1400                        # 以太网MTU payload (1500 - 8 UDP - 20 IP)
PACKET_INTERVAL = MTU / BYTE_RATE # 每个包的发送间隔 (约0.942ms)

# 全局停止事件
stop_event = Event()

def signal_handler(sig, frame):
    """处理Ctrl+C"""
    print("\n接收到停止信号，正在停止...")
    stop_event.set()

signal.signal(signal.SIGINT, signal_handler)

def generate_continuous_data(seed=0, pattern='incremental'):
    """生成连续的测试数据流

    Args:
        seed: 起始种子值
        pattern: 数据模式

    Yields:
        int: 下一个字节值
    """
    counter = seed
    while not stop_event.is_set():
        if pattern == 'incremental':
            yield counter % 256
            counter += 1
        elif pattern == 'checkerboard':
            yield 0x55 if (counter // MTU) % 2 == 0 else 0xAA
            counter += 1
        elif pattern == 'fixed':
            yield 0x5A
        elif pattern == 'gray_walk':
            # 每个包内Gray码循环
            symbols = [0, 1, 3, 2]
            for _ in range(MTU):
                byte = 0
                for j in range(4):
                    idx = (counter * 4 + j) % 4
                    byte |= symbols[idx] << (j * 2)
                yield byte
                counter += 1
        else:
            yield counter % 256
            counter += 1

def byte_to_symbols(byte, bit_order=0):
    """将字节转换为4个symbol"""
    if bit_order == 0:
        return [
            byte & 0x03,
            (byte >> 2) & 0x03,
            (byte >> 4) & 0x03,
            (byte >> 6) & 0x03
        ]
    else:
        return [
            (byte >> 6) & 0x03,
            (byte >> 4) & 0x03,
            (byte >> 2) & 0x03,
            byte & 0x03
        ]

def calculate_timing_stats(timestamps, num_bytes):
    """计算发送统计信息"""
    if len(timestamps) < 2:
        return None

    intervals = [timestamps[i] - timestamps[i-1] for i in range(1, len(timestamps))]
    avg_interval = sum(intervals) / len(intervals)
    actual_rate = num_bytes / avg_interval if avg_interval > 0 else 0
    symbol_rate = actual_rate * 4

    return {
        'avg_interval_ms': avg_interval * 1000,
        'min_interval_ms': min(intervals) * 1000,
        'max_interval_ms': max(intervals) * 1000,
        'actual_byte_rate_MB': actual_rate / 1e6,
        'actual_symbol_rate_M': symbol_rate / 1e6,
        'target_symbol_rate_M': SYMBOL_RATE / 1e6,
        'error_percent': (symbol_rate - SYMBOL_RATE) / SYMBOL_RATE * 100
    }

def send_continuous(ip=FPGA_IP, port=FPGA_PORT, pattern='incremental',
                   packet_size=MTU, duration=0, report_interval=1000):
    """以6.25M符号率持续发送UDP数据

    Args:
        ip: FPGA IP地址
        port: FPGA端口
        pattern: 数据模式
        packet_size: 每个UDP包的payload大小
        duration: 发送持续时间(秒), 0表示无限
        report_interval: 报告间隔(包数)
    """
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.settimeout(2.0)

    # 计算精确的包间隔
    packet_interval = packet_size / BYTE_RATE

    print(f"=== UDP QPSK 持续发送模式 ===")
    print(f"目标符号率: {SYMBOL_RATE/1e6:.2f} Msymbol/s")
    print(f"目标字节率: {BYTE_RATE/1e6:.4f} MB/s")
    print(f"包大小: {packet_size} bytes")
    print(f"包间隔: {packet_interval*1000:.3f} ms")
    print(f"发送到: {ip}:{port}")
    print(f"数据模式: {pattern}")
    if duration > 0:
        print(f"持续时间: {duration} 秒")
    else:
        print(f"持续时间: 无限 (按Ctrl+C停止)")
    print("-" * 50)

    # 预生成数据
    data_gen = generate_continuous_data(pattern=pattern)

    total_bytes = 0
    total_packets = 0
    packet_times = []
    start_time = time.time()
    next_send_time = start_time
    end_time = start_time + duration if duration > 0 else float('inf')

    try:
        while not stop_event.is_set() and time.time() < end_time:
            # 构建数据包
            packet_data = bytes([next(data_gen) for _ in range(packet_size)])

            # 等待到精确的发送时间
            now = time.time()
            wait_time = next_send_time - now
            if wait_time > 0:
                time.sleep(wait_time)

            # 发送数据
            send_start = time.perf_counter()
            sock.sendto(packet_data, (ip, port))
            send_end = time.perf_counter()

            # 更新统计
            total_bytes += packet_size
            total_packets += 1
            packet_times.append(time.time())

            # 计算下一个发送时间
            next_send_time += packet_interval

            # 定期报告
            if total_packets % report_interval == 0:
                elapsed = time.time() - start_time
                current_rate = total_bytes / elapsed
                symbol_rate = current_rate * 4

                # 计算最近100个包的统计
                recent_times = packet_times[-100:]
                stats = calculate_timing_stats(recent_times, packet_size)

                print(f"[{elapsed:.1f}s] 包: {total_packets} | "
                      f"字节: {total_bytes/1e6:.2f}MB | "
                      f"符号率: {symbol_rate/1e6:.3f}Msym/s | "
                      f"平均间隔: {stats['avg_interval_ms']:.3f}ms")

                # 如果偏差太大，调整next_send_time
                if stats and abs(stats['error_percent']) > 1:
                    correction = packet_interval * (stats['error_percent'] / 100) * 0.5
                    next_send_time -= correction

    except socket.error as e:
        print(f"\n网络错误: {e}")
    except Exception as e:
        print(f"\n错误: {e}")
    finally:
        sock.close()

        # 最终统计
        elapsed = time.time() - start_time
        if elapsed > 0:
            avg_byte_rate = total_bytes / elapsed
            avg_symbol_rate = avg_byte_rate * 4

            print("-" * 50)
            print(f"发送完成!")
            print(f"总时间: {elapsed:.3f} s")
            print(f"总包数: {total_packets}")
            print(f"总字节: {total_bytes} ({total_bytes/1e6:.2f} MB)")
            print(f"总符号: {total_bytes * 4} ({total_bytes*4/1e6:.2f} M)")
            print(f"平均字节率: {avg_byte_rate/1e6:.4f} MB/s")
            print(f"平均符号率: {avg_symbol_rate/1e6:.4f} Msymbol/s")
            print(f"目标符号率: {SYMBOL_RATE/1e6:.4f} Msymbol/s")
            print(f"偏差: {(avg_symbol_rate - SYMBOL_RATE)/SYMBOL_RATE*100:.2f}%")

def send_once(ip=FPGA_IP, port=FPGA_PORT, pattern='incremental',
              num_bytes=256, bit_order=0):
    """一次性发送固定字节数 (原始模式)"""

    def generate_data(num, mode):
        if mode == 'incremental':
            return bytes([i % 256 for i in range(num)])
        elif mode == 'fixed':
            return bytes([0x5A] * num)
        elif mode == 'checkerboard':
            return bytes([0x55 if i % 2 == 0 else 0xAA for i in range(num)])
        elif mode == 'gray_walk':
            symbols = [0, 1, 3, 2]
            data = bytearray()
            for i in range(num):
                byte = 0
                for j in range(4):
                    idx = (i * 4 + j) % 4
                    byte |= symbols[idx] << (j * 2)
                data.append(byte)
            return bytes(data)
        else:
            return bytes([i % 256 for i in range(num)])

    data = generate_data(num_bytes, pattern)

    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.sendto(data, (ip, port))
    sock.close()

    print(f"已发送 {num_bytes} 字节到 {ip}:{port}")

    # 打印预期symbol序列
    print(f"\n前32字节的预期symbol序列:")
    print(f"{'Byte':>5} | {'Hex':>4} | Sym0 | Sym1 | Sym2 | Sym3")
    print("-" * 45)
    for i, byte in enumerate(data[:32]):
        syms = byte_to_symbols(byte, bit_order)
        print(f"{i:>5} | 0x{byte:02X} |  {syms[0]}   |  {syms[1]}   |  {syms[2]}   |  {syms[3]}")

def main():
    parser = argparse.ArgumentParser(
        description='UDP QPSK Test Sender - 6.25M Symbol Rate',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
示例:
  # 持续发送 (按Ctrl+C停止)
  python udp_qpsk_test.py -c

  # 持续发送10秒
  python udp_qpsk_test.py -c -t 10

  # 使用棋盘模式持续发送
  python udp_qpsk_test.py -c -m checkerboard

  # 一次性发送256字节 (旧模式)
  python udp_qpsk_test.py -n 256
        """
    )

    parser.add_argument('-c', '--continuous', action='store_true',
                       help='持续发送模式 (6.25M符号率)')
    parser.add_argument('-t', '--duration', type=float, default=0,
                       help='持续发送时间(秒), 0表示无限 (默认: 0)')
    parser.add_argument('-m', '--mode', default='incremental',
                       choices=['incremental', 'fixed', 'checkerboard', 'gray_walk'],
                       help='数据模式 (默认: incremental)')
    parser.add_argument('-s', '--packet-size', type=int, default=MTU,
                       help=f'UDP包大小 (默认: {MTU})')
    parser.add_argument('-r', '--report-interval', type=int, default=1000,
                       help='报告间隔(包数) (默认: 1000)')

    # 一次性模式参数
    parser.add_argument('-n', '--num-bytes', type=int, default=0,
                       help='一次性发送字节数 (默认: 0, 表示使用持续模式)')
    parser.add_argument('-b', '--bit-order', type=int, default=0, choices=[0, 1],
                       help='bit顺序: 0=LSB first, 1=MSB first')

    # 网络参数
    parser.add_argument('-i', '--ip', default=FPGA_IP,
                       help=f'FPGA IP地址 (默认: {FPGA_IP})')
    parser.add_argument('-p', '--port', type=int, default=FPGA_PORT,
                       help=f'FPGA端口 (默认: {FPGA_PORT})')

    args = parser.parse_args()

    # 判断模式
    if args.continuous or args.duration > 0 or args.num_bytes == 0:
        # 持续发送模式
        send_continuous(
            ip=args.ip,
            port=args.port,
            pattern=args.mode,
            packet_size=args.packet_size,
            duration=args.duration,
            report_interval=args.report_interval
        )
    else:
        # 一次性发送模式
        send_once(
            ip=args.ip,
            port=args.port,
            pattern=args.mode,
            num_bytes=args.num_bytes,
            bit_order=args.bit_order
        )

if __name__ == "__main__":
    main()
