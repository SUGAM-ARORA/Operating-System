#!/bin/bash

echo "--------------------------------------"
echo " 🔢 Sum & Average Calculator - By Sugam Arora "
echo "--------------------------------------"

# Read the number of values
read -p "Enter the count of numbers (N): " N

# Initialize sum to 0
sum=0

# Loop to read N numbers
for (( i=1; i<=N; i++ ))
do
    read -p "Enter number $i: " num
    sum=$((sum + num))
done

# Calculate average
average=$(echo "scale=2; $sum / $N" | bc)

# Display the results
echo "--------------------------------------"
echo "📌 The **Sum** of the numbers is: $sum"
echo "📌 The **Average** is: $average"
echo "--------------------------------------"
