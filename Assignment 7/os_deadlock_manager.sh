#!/bin/bash

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Banner
echo -e "${CYAN}"
echo "==============================================="
echo "     🧠 OS Deadlock Management Simulator"
echo "==============================================="
echo -e "${NC}"

# Compile functions
compile_and_run_banker() {
    echo -e "${YELLOW}Compiling Banker's Algorithm...${NC}"
    g++ banker.cpp -o banker
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✔ Compilation successful.${NC}"
        echo -e "${CYAN}▶ Executing Banker's Algorithm:${NC}"
        ./banker
    else
        echo -e "${RED}✘ Compilation failed!${NC}"
    fi
}

compile_and_run_deadlock() {
    echo -e "${YELLOW}Compiling Deadlock Detection Algorithm...${NC}"
    g++ deadlock_detection.cpp -o deadlock
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✔ Compilation successful.${NC}"
        echo -e "${CYAN}▶ Executing Deadlock Detection Algorithm:${NC}"
        ./deadlock
    else
        echo -e "${RED}✘ Compilation failed!${NC}"
    fi
}

# Main menu
while true; do
    echo -e "${CYAN}"
    echo "Choose an option:"
    echo "1) Run Banker's Algorithm"
    echo "2) Run Deadlock Detection Algorithm"
    echo "3) Run Both"
    echo "4) Exit"
    echo -e "${NC}"
    read -p "Enter your choice [1-4]: " choice

    case $choice in
        1)
            compile_and_run_banker
            ;;
        2)
            compile_and_run_deadlock
            ;;
        3)
            compile_and_run_banker
            echo
            compile_and_run_deadlock
            ;;
        4)
            echo -e "${GREEN}Exiting... Have a deadlock-free day! 🚀${NC}"
            break
            ;;
        *)
            echo -e "${RED}Invalid choice. Please select 1-4.${NC}"
            ;;
    esac
    echo -e "\n-----------------------------------------------\n"
done
