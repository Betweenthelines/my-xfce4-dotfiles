#!/bin/bash

# Get the CPU usage using mpstat (from sysstat package)
CPU=$(mpstat 1 1 | awk '/Average:/ { printf "%.1f", 100 - $NF }')

echo "$CPU%"
