#!/bin/bash
# Script by Sugam Arora
# Purpose: Check if a process is running and display its PID

read -p "Enter the process name to check: " process_name
pid=$(pgrep -x "$process_name")

if [ -z "$pid" ]; then
    echo "Process '$process_name' is not running."
else
    echo "Process '$process_name' is running with PID: $pid."
fi
