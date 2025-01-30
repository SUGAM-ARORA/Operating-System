#!/bin/bash

echo "--------------------------------------"
echo " 🔄 Palindrome Checker - By Sugam Arora "
echo "--------------------------------------"

# Read number from user
read -p "Enter a number: " num

# Reverse the number
reverse=$(echo "$num" | rev)

if [ "$num" -eq "$reverse" ]; then
    echo "✅ The number $num is a **Palindrome**."
else
    echo "❌ The number $num is **Not a Palindrome**."
fi

echo "--------------------------------------"
