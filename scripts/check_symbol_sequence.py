#!/usr/bin/env python3
"""
验证 byte2symbol 的 symbol 输出序列
根据 fifo_dout 计算预期的 symbol 序列
"""

def byte_to_symbols_lsb(byte):
    """LSB first: 字节[1:0] -> [3:2] -> [5:4] -> [7:6]"""
    sym0 = byte & 0x03
    sym1 = (byte >> 2) & 0x03
    sym2 = (byte >> 4) & 0x03
    sym3 = (byte >> 6) & 0x03
    return [sym0, sym1, sym2, sym3]

def generate_continuous_0123():
    """
    生成能产生连续 0,1,2,3,0,1,2,3... 的字节序列

    symbol 0 -> bits 00
    symbol 1 -> bits 01
    symbol 2 -> bits 10
    symbol 3 -> bits 11

    要得到 0,1,2,3:
    byte = 00_01_10_11 (二进制) = 0xE4

    要得到 0,1,2,3,0,1,2,3:
    byte0 = 11_10_01_00 = 0xE4 (但symbol顺序是0,1,2,3)
    byte1 = 11_10_01_00 = 0xE4
    """
    # 产生 0,1,2,3 顺序的字节: bits = 11_10_01_00 = 0xE4
    # 但注意 LSB first 提取顺序是 [1:0], [3:2], [5:4], [7:6]
    # 所以:
    #   sym0 = [1:0] = 00 = 0
    #   sym1 = [3:2] = 01 = 1
    #   sym2 = [5:4] = 10 = 2
    #   sym3 = [7:6] = 11 = 3
    # byte = 11_10_01_00 = 0xE4
    return bytes([0xE4])

def main():
    print("=" * 60)
    print("Byte2Symbol 序列验证工具")
    print("=" * 60)

    # 场景1: 递增字节序列
    print("\n【场景1】递增字节序列 (0x00, 0x01, 0x02...)")
    print("-" * 60)
    fifo_data = list(range(8))  # 0x00 到 0x07

    print(f"{'Byte':>5} | {'Hex':>4} | Symbol序列 (时序顺序)")
    print("-" * 60)

    all_symbols = []
    for byte in fifo_data:
        syms = byte_to_symbols_lsb(byte)
        all_symbols.extend(syms)
        print(f"{byte:>5} | 0x{byte:02X} | {syms[0]} → {syms[1]} → {syms[2]} → {syms[3]}")

    print(f"\n合并后的 symbol 序列:")
    print(f"{all_symbols}")
    print(f"注意: 不是连续的 0,1,2,3! 每个字节的高位都是0")

    # 场景2: 产生连续 0,1,2,3 需要的发送字节
    print("\n" + "=" * 60)
    print("【场景2】如何产生连续的 0,1,2,3,0,1,2,3...")
    print("=" * 60)

    # 要产生 symbol 序列 0,1,2,3:
    # sym0=0 -> bits[1:0] = 00
    # sym1=1 -> bits[3:2] = 01
    # sym2=2 -> bits[5:4] = 10
    # sym3=3 -> bits[7:6] = 11
    # byte = 11_10_01_00 = 0xE4

    test_byte = 0xE4
    syms = byte_to_symbols_lsb(test_byte)
    print(f"发送字节: 0x{test_byte:02X} (二进制: 11_10_01_00)")
    print(f"提取的 symbols: {syms}")
    print(f"验证: 0x{test_byte:02X} = {test_byte:08b}b")
    print(f"  bits[1:0] = {(test_byte >> 0) & 0x3} = {syms[0]}")
    print(f"  bits[3:2] = {(test_byte >> 2) & 0x3} = {syms[1]}")
    print(f"  bits[5:4] = {(test_byte >> 4) & 0x3} = {syms[2]}")
    print(f"  bits[7:6] = {(test_byte >> 6) & 0x3} = {syms[3]}")

    # 场景3: 验证 FPGA 实际输出的 ILA 数据
    print("\n" + "=" * 60)
    print("【场景3】验证你的 ILA 捕获数据")
    print("=" * 60)

    # 示例: 如果 fifo_dout 是递增序列
    print("\n如果你的 fifo_dout 是: [0, 1, 2, 3, 4, 5, 6, 7]")
    print("预期的 symbol 序列应该是:")

    test_fifo = list(range(8))
    expected = []
    for b in test_fifo:
        expected.extend(byte_to_symbols_lsb(b))

    print(f"  {expected}")

    print("\n请核对你的 ILA 捕获的 symbol 序列:")
    print("  - 如果匹配上面的序列 -> FPGA 工作正常")
    print("  - 如果不匹配 -> 可能有问题")

    # 打印连续的 symbol 值供对比
    print(f"\n详细对应关系:")
    print(f"{'Index':>6} | {'Byte':>4} | {'Bit段':>6} | Symbol")
    print("-" * 40)
    idx = 0
    for byte in test_fifo:
        syms = byte_to_symbols_lsb(byte)
        bit_ranges = ['[1:0]', '[3:2]', '[5:4]', '[7:6]']
        for i, (sym, br) in enumerate(zip(syms, bit_ranges)):
            print(f"{idx:>6} | 0x{byte:02X} | {br:>6} | {sym}")
            idx += 1

    # 生成可以发送的测试数据
    print("\n" + "=" * 60)
    print("【测试数据生成】发送这些数据可得到可预测的 symbol 序列")
    print("=" * 60)

    # 方式1: 全0xE4 -> 连续的 0,1,2,3
    data_0123 = bytes([0xE4] * 10)
    print(f"\n方式1 - 连续的 0,1,2,3:")
    print(f"  数据: {' '.join(f'0x{b:02X}' for b in data_0123[:5])}...")
    print(f"  预期 symbol: 0,1,2,3, 0,1,2,3, 0,1,2,3...")

    # 方式2: 0x00 -> 全0
    data_all0 = bytes([0x00] * 10)
    print(f"\n方式2 - 全0 (固定symbol 0):")
    print(f"  数据: {' '.join(f'0x{b:02X}' for b in data_all0[:5])}...")
    print(f"  预期 symbol: 0,0,0,0, 0,0,0,0...")

    # 方式3: 0x55 -> 交替 1,1,1,1 (0x55 = 01_01_01_01)
    data_all1 = bytes([0x55] * 10)
    print(f"\n方式3 - 全1 (固定symbol 1):")
    print(f"  数据: {' '.join(f'0x{b:02X}' for b in data_all1[:5])}...")
    print(f"  预期 symbol: 1,1,1,1, 1,1,1,1...")

    # 方式4: 0xAA -> 交替 2,2,2,2 (0xAA = 10_10_10_10)
    data_all2 = bytes([0xAA] * 10)
    print(f"\n方式4 - 全2 (固定symbol 2):")
    print(f"  数据: {' '.join(f'0x{b:02X}' for b in data_all2[:5])}...")
    print(f"  预期 symbol: 2,2,2,2, 2,2,2,2...")

    # 方式5: 0xFF -> 全3
    data_all3 = bytes([0xFF] * 10)
    print(f"\n方式5 - 全3 (固定symbol 3):")
    print(f"  数据: {' '.join(f'0x{b:02X}' for b in data_all3[:5])}...")
    print(f"  预期 symbol: 3,3,3,3, 3,3,3,3...")

if __name__ == "__main__":
    main()
