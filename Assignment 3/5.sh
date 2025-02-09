#!/bin/bash
# Script by Sugam Arora
# Purpose: Check for palindrome

read -p "Enter a string or number: " input
reversed=$(echo "$input" | rev)

if [ "$input" == "$reversed" ]; then
    echo "$input is a palindrome."
else
    echo "$input is not a palindrome."
fi
