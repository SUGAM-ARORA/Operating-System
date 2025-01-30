#!/bin/bash

echo "--------------------------------------"
echo " 🔎 Pattern Search - By Sugam Arora "
echo "--------------------------------------"

# Read file name and pattern
read -p "Enter the filename: " filename
read -p "Enter the pattern to search: " pattern

# Perform search
if grep -q "$pattern" "$filename"; then
    echo "✅ Pattern \"$pattern\" found in $filename!"
    grep --color=auto "$pattern" "$filename"
else
    echo "❌ Pattern \"$pattern\" not found!"
fi

echo "--------------------------------------"
