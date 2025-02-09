#!/bin/bash
# Script by Sugam Arora
# Purpose: Search and replace a string in a file

read -p "Enter the file name: " file
read -p "Enter the string to search: " search
read -p "Enter the replacement string: " replace

if [ -f "$file" ]; then
    sed -i "s/$search/$replace/g" "$file"
    echo "String replaced successfully in $file."
else
    echo "File $file does not exist."
fi
