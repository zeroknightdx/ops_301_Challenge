#!/bin/bash         
# Script Name:                 Menu game
# Author:                       Michael Owen Plaskett    
# Date of latest revision:      08/31/2023
# Purpose:      To show process of react base on different object state
# Resource:  Hexx

while true; do
    clear
    echo "Menu:"
    echo "1. Hello world"
    echo "2. Ping self"
    echo "3. IP info"
    echo "4. Exit"
    read -p "Enter your choice (1/2/3/4): " choice

    case $choice in
        1)
            echo "Hello world!"
            ;;
        2)
            ping -c 4 192.168.0.97
            ;;
        3)
            ip a

            ;;
        4)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a valid option."
            ;;
    esac

    read -p "Press Enter to continue..."
done