#!/bin/bash

echo "--------------------------------------"
echo " 🔢 Sum of Series (N²) - By Sugam Arora "
echo "--------------------------------------"

# Read input from the user
read -p "Enter the value of N: " N

sum=0
for (( i=1; i<=N; i++ ))
do
    sum=$((sum + (i * i)))
done

echo "📌 The sum of the series up to $N² is: $sum"
echo "--------------------------------------"
