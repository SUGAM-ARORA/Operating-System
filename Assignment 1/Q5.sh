#!/bin/bash

# Prompt the user to enter a number
echo "Enter a number:"
read number

# Initialize sum to 0
sum=0

# Calculate the sum of digits
while [ $number -gt 0 ]; do
    digit=$((number % 10))  # Extract the last digit
    sum=$((sum + digit))    # Add the digit to the sum
    number=$((number / 10)) # Remove the last digit
done

# Display the result
echo "The sum of the digits is: $sum"
