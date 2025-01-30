#!/bin/bash

echo "--------------------------------------"
echo " 🔢 Sum of Series - By Sugam Arora "
echo "--------------------------------------"

# Read input from user
read -p "Enter N for series sum: " N

echo "Choose the series type:"
echo "1. S = 1 + 2 + 3 + ... + N"
echo "2. S = 1² + 2² + ... + N²"
read -p "Enter your choice (1-2): " choice

case $choice in
    1) sum=$(( N * (N + 1) / 2 )) ;;
    2) sum=0
       for (( i=1; i<=N; i++ ))
       do
           sum=$((sum + (i * i)))
       done ;;
    *) echo "❌ Invalid choice!"
       exit 1 ;;
esac

echo "📌 The sum of the series is: $sum"
echo "--------------------------------------"
