#!/bin/bash
THRESHOLD=90  # Set the threshold (in percentage)
SPACE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [[ $SPACE -ge $THRESHOLD ]]; then
    echo "WARNING: Disk space is running low!"
else
    echo "Disk space is OK."
fi
