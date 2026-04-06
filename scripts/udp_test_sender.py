#!/usr/bin/env python3
"""
UDP Test Data Sender for QPSK FPGA Verification

Usage:
    python udp_test_sender.py --ip 192.168.1.10 --pattern increment --count 1000
    python udp_test_sender.py --ip 192.168.1.10 --pattern prbs --rate 1000

Patterns:
    increment: 0x00, 0x01, 0x02, ... 0xFF, 0x00, ...
    prbs: PRBS-7 pseudo-random sequence (for BER testing)
    fixed: Fixed byte value (e.g., 0x55 for alternating symbols)
    file: Read data from file
"""

import socket
import time
import argparse
import sys
from typing import Iterator


def pattern_increment() -> Iterator[bytes]:
    """Generate incrementing byte pattern: 0x00, 0x01, ... 0xFF"""
    i = 0
    while True:
        yield bytes([i & 0xFF])
        i += 1


def pattern_prbs(seed: int = 0x01) -> Iterator[bytes]:
    """
    Generate PRBS-7 sequence (x^7 + x^6 + 1)
    Period: 127 bytes
    """
    lfsr = seed
    while True:
        # PRBS-7: feedback = bit0 XOR bit1 (taps at positions 7 and 6)
        bit = ((lfsr >> 0) ^ (lfsr >> 1)) & 1
        lfsr = (lfsr >> 1) | (bit << 6)
        yield bytes([lfsr & 0xFF])


def pattern_fixed(value: int = 0x55) -> Iterator[bytes]:
    """Generate fixed byte pattern"""
    while True:
        yield bytes([value & 0xFF])


def pattern_file(filepath: str) -> Iterator[bytes]:
    """Read data from file"""
    with open(filepath, 'rb') as f:
        data = f.read()
    i = 0
    while True:
        yield bytes([data[i % len(data)]])
        i += 1


def create_packet(generator: Iterator[bytes], packet_size: int) -> bytes:
    """Create a packet from generator"""
    return bytes([next(generator)[0] for _ in range(packet_size)])


def send_udp_data(
    target_ip: str,
    target_port: int,
    pattern: str,
    packet_size: int = 1472,
    packet_count: int = None,
    rate_pps: float = None,
    **kwargs
):
    """
    Send UDP packets with test pattern

    Args:
        target_ip: Target IP address (FPGA board)
        target_port: Target UDP port
        pattern: Pattern type ('increment', 'prbs', 'fixed', 'file')
        packet_size: UDP payload size (max 1472 for Ethernet)
        packet_count: Number of packets to send (None = infinite)
        rate_pps: Packets per second (None = maximum rate)
    """
    # Create pattern generator
    if pattern == 'increment':
        gen = pattern_increment()
    elif pattern == 'prbs':
        gen = pattern_prbs(seed=kwargs.get('prbs_seed', 0x01))
    elif pattern == 'fixed':
        gen = pattern_fixed(value=kwargs.get('fixed_value', 0x55))
    elif pattern == 'file':
        if 'filepath' not in kwargs:
            print("Error: filepath required for file pattern")
            sys.exit(1)
        gen = pattern_file(kwargs['filepath'])
    else:
        print(f"Unknown pattern: {pattern}")
        sys.exit(1)

    # Create UDP socket
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.setblocking(False)

    # Calculate inter-packet delay
    delay = 1.0 / rate_pps if rate_pps else 0

    print(f"Sending UDP packets to {target_ip}:{target_port}")
    print(f"Pattern: {pattern}, Packet size: {packet_size} bytes")
    if packet_count:
        print(f"Packet count: {packet_count}")
    else:
        print("Packet count: infinite (Ctrl+C to stop)")
    if rate_pps:
        print(f"Rate: {rate_pps} packets/sec ({rate_pps * packet_size * 8 / 1e6:.2f} Mbps)")
    else:
        print("Rate: maximum")
    print("-" * 50)

    # Statistics
    packets_sent = 0
    bytes_sent = 0
    start_time = time.time()
    last_print_time = start_time

    try:
        count = 0
        while packet_count is None or count < packet_count:
            # Create and send packet
            packet = create_packet(gen, packet_size)
            try:
                sock.sendto(packet, (target_ip, target_port))
                packets_sent += 1
                bytes_sent += len(packet) + 42  # Include Ethernet overhead
            except BlockingIOError:
                pass

            count += 1

            # Rate control
            if delay > 0:
                time.sleep(delay)

            # Print statistics every second
            current_time = time.time()
            if current_time - last_print_time >= 1.0:
                elapsed = current_time - start_time
                throughput_mbps = (bytes_sent * 8) / (elapsed * 1e6)
                print(f"Sent: {packets_sent} packets, "
                      f"Throughput: {throughput_mbps:.2f} Mbps, "
                      f"Time: {elapsed:.1f}s")
                last_print_time = current_time

    except KeyboardInterrupt:
        print("\nStopped by user")
    finally:
        sock.close()

        # Final statistics
        elapsed = time.time() - start_time
        if elapsed > 0:
            print("-" * 50)
            print(f"Total packets sent: {packets_sent}")
            print(f"Total bytes sent: {bytes_sent} (with overhead)")
            print(f"Duration: {elapsed:.2f} seconds")
            print(f"Average throughput: {(bytes_sent * 8) / (elapsed * 1e6):.2f} Mbps")


def main():
    parser = argparse.ArgumentParser(
        description='UDP Test Data Sender for QPSK FPGA Verification'
    )
    parser.add_argument(
        '--ip', '-i',
        type=str,
        default='192.168.1.10',
        help='Target IP address (default: 192.168.1.10)'
    )
    parser.add_argument(
        '--port', '-p',
        type=int,
        default=8080,
        help='Target UDP port (default: 8080)'
    )
    parser.add_argument(
        '--pattern',
        type=str,
        choices=['increment', 'prbs', 'fixed', 'file'],
        default='increment',
        help='Test pattern (default: increment)'
    )
    parser.add_argument(
        '--size', '-s',
        type=int,
        default=1472,
        help='UDP payload size in bytes (default: 1472, max for standard MTU)'
    )
    parser.add_argument(
        '--count', '-c',
        type=int,
        default=None,
        help='Number of packets to send (default: infinite)'
    )
    parser.add_argument(
        '--rate', '-r',
        type=float,
        default=None,
        help='Send rate in packets per second (default: maximum)'
    )
    parser.add_argument(
        '--prbs-seed',
        type=lambda x: int(x, 0),
        default=0x01,
        help='PRBS seed value (default: 0x01)'
    )
    parser.add_argument(
        '--fixed-value',
        type=lambda x: int(x, 0),
        default=0x55,
        help='Fixed pattern value (default: 0x55)'
    )
    parser.add_argument(
        '--file', '-f',
        type=str,
        default=None,
        help='File path for file pattern'
    )

    args = parser.parse_args()

    # Validate arguments
    if args.size > 1472:
        print(f"Warning: Packet size {args.size} exceeds standard MTU (1472)")
        print("Consider using Jumbo frames or reducing packet size")

    # Send data
    kwargs = {
        'prbs_seed': args.prbs_seed,
        'fixed_value': args.fixed_value,
    }
    if args.file:
        kwargs['filepath'] = args.file

    send_udp_data(
        target_ip=args.ip,
        target_port=args.port,
        pattern=args.pattern,
        packet_size=args.size,
        packet_count=args.count,
        rate_pps=args.rate,
        **kwargs
    )


if __name__ == '__main__':
    main()
