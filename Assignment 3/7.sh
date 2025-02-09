#!/bin/bash
# Script by Sugam Arora
# Purpose: Read, sort, and save numbers

read -p "Enter the file containing numbers: " input_file
read -p "Enter the output file name: " output_file

if [ -f "$input_file" ]; then
    sort -n "$input_file" > "$output_file"
    echo "Numbers sorted and saved in $output_file."
else
    echo "Input file $input_file does not exist."
fi
