#!/bin/bash

# Prompt the user to enter two integers
echo "Enter the first integer:"
read a
echo "Enter the second integer:"
read b

echo "Before swapping: a = $a, b = $b"

# Swap the integers
temp=$a
a=$b
b=$temp

echo "After swapping: a = $a, b = $b"
