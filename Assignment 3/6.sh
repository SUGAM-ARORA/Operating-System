#!/bin/bash
# Script by Sugam Arora
# Purpose: Monitor a file for changes

read -p "Enter the file to monitor: " file

if [ -f "$file" ]; then
    echo "Monitoring $file for changes. Press [Ctrl+C] to stop."
    while inotifywait -e modify "$file"; do
        echo "The file $file was modified at $(date)."
    done
else
    echo "File $file does not exist."
fi
