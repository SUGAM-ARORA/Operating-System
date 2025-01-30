#!/bin/bash

echo "--------------------------------------"
echo " 🔢 Factorial Finder - By Sugam Arora "
echo "--------------------------------------"

# Read input from the user
read -p "Enter a number: " num

# Check if the number is negative
if [ "$num" -lt 0 ]; then
    echo "❌ Factorial is not defined for negative numbers!"
    exit 1
fi

# Initialize factorial to 1
fact=1

# Calculate factorial using a loop
for (( i=1; i<=num; i++ ))
do
    fact=$((fact * i))
done

# Display the result
echo "--------------------------------------"
echo "📌 The **Factorial** of $num is: $fact"
echo "--------------------------------------"
