#!/bin/bash

echo "--------------------------------------"
echo " 🔢 Find Largest & Smallest - By Sugam Arora "
echo "--------------------------------------"

# Prompt user for three numbers
read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter third number: " num3

# Finding the largest number
if [ "$num1" -ge "$num2" ] && [ "$num1" -ge "$num3" ]; then
    largest=$num1
elif [ "$num2" -ge "$num1" ] && [ "$num2" -ge "$num3" ]; then
    largest=$num2
else
    largest=$num3
fi

# Finding the smallest number
if [ "$num1" -le "$num2" ] && [ "$num1" -le "$num3" ]; then
    smallest=$num1
elif [ "$num2" -le "$num1" ] && [ "$num2" -le "$num3" ]; then
    smallest=$num2
else
    smallest=$num3
fi

# Display the results
echo "--------------------------------------"
echo "📌 The **Largest** number is: $largest"
echo "📌 The **Smallest** number is: $smallest"
echo "--------------------------------------"
