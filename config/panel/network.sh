#!/usr/bin/env bash

# Optional icon (remove or change if not needed)
ICON=""

# Auto-detect the first non-loopback, UP interface
INTERFACE=$(ip -o link show up | awk -F': ' '!/lo/ {print $2; exit}')

# Exit if no network is up
if [[ -z "$INTERFACE" ]]; then
  echo "<txt>Disconnected</txt>"
  echo "<tool>No network interfaces detected.</tool>"
  exit 0
fi

# Get RX and TX bytes
PRX=$(cat /sys/class/net/"$INTERFACE"/statistics/rx_bytes)
PTX=$(cat /sys/class/net/"$INTERFACE"/statistics/tx_bytes)
sleep 1
CRX=$(cat /sys/class/net/"$INTERFACE"/statistics/rx_bytes)
CTX=$(cat /sys/class/net/"$INTERFACE"/statistics/tx_bytes)

BRX=$((CRX - PRX))
BTX=$((CTX - PTX))

# Convert bytes to human readable
to_human() {
  local B=$1
  local UNITS=(B KB MB GB)
  for unit in "${UNITS[@]}"; do
    if (( B < 1024 )); then
      echo "${B} ${unit}/s"
      return
    fi
    B=$((B / 1024))
  done
  echo "${B} TB/s"
}

RX=$(to_human "$BRX")
TX=$(to_human "$BTX")

# Panel output
echo "<txt>↓<span fgcolor='red'>$RX</span> ↑<span fgcolor='green'>$TX</span></txt>"

# Tooltip with connection summary
TOOLTIP=$(ss -s | head -n 3 | grep -Ev "^$")
echo "<tool>${TOOLTIP}</tool>"
