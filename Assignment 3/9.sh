#!/bin/bash
# Script by Sugam Arora
# Purpose: Display system information

echo "System Information:"
echo "-------------------"
echo "OS Version: $(uname -o)"
echo "Kernel Version: $(uname -r)"
echo "System Uptime: $(uptime -p)"
