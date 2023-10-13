#!/bin/bash

# Clear Bash History
history -c
history -w

# Clear APT Cache
sudo apt-get clean

# Clear Thumbnail Cache
rm -r ~/.cache/thumbnails

# Clear Temporary Files
rm -rf /tmp/*
rm -rf /var/tmp/*

echo "History, cache, and temporary files have been cleared."
