#!/bin/bash

# AUthor: Rishav Chandra Prasad
# Script: Sysrem information Report
echo "======================================="
echo "      SYSTEM INFORMATION REPORT"
echo "======================================="
echo "Name: Rishav Chandra Prasad"
echo "Roll Number: 2601730356"
echo "Date: $(date)"
echo
echo "=== CPU Information ==="
lscpu | grep -E '^Model name:|^Core\(s\) per socket:|^CPU\(s\):'
echo
echo "=== Memory Information ==="
free -h | awk '/^Mem:/ {print "Total RAM:", $2; print "Used RAM:", $3}'

echo
echo "=== Top 3 Processes by CPU Usage ==="
echo "PID COMMAND CPU%"
ps -eo pid,comm,pcpu --no-headers | sort -k3,3nr | head -n 3
echo
echo "========================================"
echo "Report generated successfully."
echo "========================================"

