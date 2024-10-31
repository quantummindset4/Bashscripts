#!/bin/bash

# Clear apt cache
echo "Cleaning apt cache..."
sudo apt-get clean

# Remove unused packages
echo "Removing unused packages..."
sudo apt-get autoremove -y

# Clear systemd journal logs
echo "Cleaning old system logs..."
sudo journalctl --vacuum-time=2weeks

# Clear thumbnail cache
echo "Clearing thumbnail cache..."
rm -rf ~/.cache/thumbnails/*

# Clear browser caches
echo "Clearing browser caches..."
rm -rf ~/.cache/google-chrome/*
rm -rf ~/.cache/BraveSoftware/Brave-Browser/*
rm -rf ~/.cache/mozilla/firefox/*

# Clear other application caches
echo "Clearing other application caches..."
rm -rf ~/.cache/*

# Clear pip cache
echo "Clearing pip cache..."
rm -rf ~/.cache/pip

# Remove old log files
echo "Removing old log files..."
sudo find /var/log -type f -name "*.log" -exec truncate -s 0 {} \;

# Clear temporary files
echo "Cleaning temporary files..."
rm -rf /tmp/*

# Remove trash
echo "Emptying trash..."
rm -rf ~/.local/share/Trash/*

echo "System cleanup complete!"
