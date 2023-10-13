#!/bin/bash
echo "System Health Summary"
echo "---------------------"
echo "Uptime: $(uptime)"
echo "CPU Usage: $(top -b -n1 | grep Cpu)"
echo "Memory Usage: $(free -h)"
echo "Disk Usage: $(df -h /)"
