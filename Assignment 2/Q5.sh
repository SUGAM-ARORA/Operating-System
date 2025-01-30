#!/bin/bash

echo "--------------------------------------"
echo " 🔢 Odd Number Sequence - By Sugam Arora "
echo "--------------------------------------"

# Read input from the user
read -p "Enter a number (N): " N

echo "🟠 Odd numbers up to $N:"
for (( i=1; i<=N; i+=2 ))
do
    echo -n "$i "
done
echo
echo "--------------------------------------"
