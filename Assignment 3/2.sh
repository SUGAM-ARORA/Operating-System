#!/bin/bash
# Script by Sugam Arora
# Purpose: Display disk usage of the home directory

echo "Disk usage of the home directory:"
du -h --max-depth=1 ~ | sort -hr
