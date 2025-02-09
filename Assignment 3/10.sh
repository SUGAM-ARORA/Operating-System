#!/bin/bash
# Script by Sugam Arora
# Purpose: Display multiplication table

read -p "Enter a number for the multiplication table: " num

echo "Multiplication table for $num:"
for i in {1..10}; do
    echo "$num x $i = $((num * i))"
done
