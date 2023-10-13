#!/bin/bash

# Script to monitor system resources on a Linux system

# Date and Time
date

# Uptime
uptime

# Load Average
cat /proc/loadavg

# CPU Usage
top -n 1 | grep "Cpu(s)"

# Memory Usage
free -h

# Swap Usage
swapon -s

# Disk Usage
df -h

# I/O Stats
iostat -d 1 2

# Network Stats
ifstat

# Users Currently Logged In
who

# Process List
ps aux

# Check for Available Updates (unattended-upgrades package must be installed)
if [ -x /usr/bin/unattended-upgrades ]; then
    echo "Checking for available updates..."
    sudo /usr/bin/unattended-upgrades -d
else
    echo "unattended-upgrades package not installed."
fi

# End of Script
