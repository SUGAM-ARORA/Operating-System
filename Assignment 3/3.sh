#!/bin/bash
# Script by Sugam Arora
# Purpose: Generate Fibonacci sequence

read -p "Enter the number of terms for the Fibonacci sequence: " n

a=0
b=1

echo "Fibonacci sequence up to $n terms:"
for ((i=0; i<n; i++)); do
    echo -n "$a "
    fib=$((a + b))
    a=$b
    b=$fib
done
echo
