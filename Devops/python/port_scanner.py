#!/usr/bin/env python3
import socket
from datetime import datetime


def scan_ports(host, start_port, end_port):
    print(f"Scanning {host} from port {start_port} to {end_port}...")
    start_time = datetime.now()

    open_ports = []

    for port in range(start_port, end_port + 1):
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(0.5)
        result = sock.connect_ex((host, port))
        if result == 0:
            open_ports.append(port)
            print(f"Port {port} is OPEN")
        sock.close()

    end_time = datetime.now()
    duration = end_time - start_time

    print(f"\nScan complete in {duration}")
    print(f"Open ports: {open_ports}")
    return open_ports


if __name__ == "__main__":
    import sys

    if len(sys.argv) < 2:
        host = input("Enter host to scan: ")
    else:
        host = sys.argv[1]

    scan_ports(host, 1, 1024)
