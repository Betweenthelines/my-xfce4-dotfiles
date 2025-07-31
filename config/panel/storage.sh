#!/bin/bash
ROOT=$(df -h / | awk 'NR==2 {print $5}')
HOME=$(df -h /home 2>/dev/null | awk 'NR==2 {print $5}')

echo "<txt> 	$ROOT $HOME</txt>"

echo "<tool>"
df -h | grep -E '^/dev/' | awk '{printf "%-10s %s/%s (%s)\n", $1, $3, $2, $5}'
echo "</tool>"
