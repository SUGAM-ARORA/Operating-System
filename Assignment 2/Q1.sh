#!/bin/bash

echo "--------------------------------------"
echo "   🔍 Number Checker by Sugam Arora  "
echo "--------------------------------------"

# Prompt user for input
read -p "Enter a number: " num

# Check conditions
if [ "$num" -gt 0 ]; then
    echo "✅ The number $num is **Positive**."
elif [ "$num" -lt 0 ]; then
    echo "⚠️ The number $num is **Negative**."
else
    echo "➖ The number is **Zero** (Neutral)."
fi

echo "--------------------------------------"
