#!/bin/bash

echo "--------------------------------------"
echo " 🔐 User Login Checker - By Sugam Arora "
echo "--------------------------------------"

# Read username
read -p "Enter the username to check: " user

# Check if the user is logged in
if who | grep -q "^$user "; then
    echo "✅ User \"$user\" is **currently logged in**."
else
    echo "❌ User \"$user\" is **not logged in**."
fi

echo "--------------------------------------"
