#!/bin/bash
# Script by Sugam Arora
# Purpose: Count files with specific extensions

read -p "Enter the directory to search: " directory
read -p "Enter the file extension (e.g., .txt, .sh): " extension

if [ -d "$directory" ]; then
    count=$(find "$directory" -type f -name "*$extension" | wc -l)
    echo "Number of files with $extension in $directory: $count."
else
    echo "Directory $directory does not exist."
fi
