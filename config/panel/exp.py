#!/usr/bin/env python3

import time
import psutil
import subprocess

def bar(percent, length):
    filled = int(percent * length / 100)
    empty = length - filled
    return "█" * filled + "░" * empty

# CPU
cpu = psutil.cpu_percent(interval=0.5)

# RAM
ram = psutil.virtual_memory().percent

# DISK
disk = psutil.disk_usage("/").percent

# NETWORK
iface = subprocess.check_output(
    "ip route get 1 | awk '{print $5; exit}'",
    shell=True
).decode().strip()

rx1 = int(open(f"/sys/class/net/{iface}/statistics/rx_bytes").read())
tx1 = int(open(f"/sys/class/net/{iface}/statistics/tx_bytes").read())

time.sleep(0.5)

rx2 = int(open(f"/sys/class/net/{iface}/statistics/rx_bytes").read())
tx2 = int(open(f"/sys/class/net/{iface}/statistics/tx_bytes").read())

down = rx2 - rx1
up = tx2 - tx1


def format_speed(b):
    if b > 1048576:
        return f"{b/1048576:.1f}M"
    return f"{int(b/1024)}K"

down_h = format_speed(down)
up_h = format_speed(up)

cpu_bar = bar(cpu, 10)
ram_bar = bar(ram, 12)
disk_bar = bar(disk, 5)

print(
f"<txt>"
f"<span fgcolor='#98c379'>CPU {cpu_bar} {cpu:.0f}%</span> | "
f"<span fgcolor='#61afef'>RAM {ram_bar} {ram:.0f}%</span> | "
f"<span fgcolor='#e5c07b'>DISK {disk_bar} {disk:.0f}%</span> | "
f"<span fgcolor='#5fd7ff'>D {down_h}</span> "
f"<span fgcolor='#ff7a7a'>U {up_h}</span>"
f"</txt>"
)

print("<tool>")

print(f"CPU  : {cpu:.0f}%")
print(f"RAM  : {ram:.0f}%")
print(f"NET  : ↓{down_h}/s ↑{up_h}/s")

print("")
print("Disk Usage")

seen_devices = set()

def disk_bar(percent, length=10):
    filled = int(percent * length / 100)
    empty = length - filled
    return "█"*filled + "░"*empty

for p in psutil.disk_partitions():

    if p.device in seen_devices:
        continue
    seen_devices.add(p.device)

    if p.fstype == "" or p.device.startswith("tmpfs"):
        continue

    try:
        usage = psutil.disk_usage(p.mountpoint)

        used = round(usage.used / (1024**3),1)
        total = round(usage.total / (1024**3),1)
        percent = int(usage.percent)

        bar = disk_bar(percent)

        print(f"{p.mountpoint:<8} {bar} {percent}%  ({used}G/{total}G)")

    except PermissionError:
        pass

print("</tool>")