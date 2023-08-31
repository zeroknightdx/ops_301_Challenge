#!/bin/bash
# Script Name:                  log and performs actions
# Author:                       Michael Plaskett    
# Date of latest revision:      08/30/2023
# Purpose:                     To make an changes and logs file
# Resource:  

# Set the log file path
log_file="script_log.txt"

# Function to log actions
log_action() {
    local action="$1"
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $action" >> "$log_file"
}

# Function to display and delay
display_with_delay() {
    local files=("$@")
    for file in "${files[@]}"; do
        echo "Changing file: $file"
        sleep 2  # Adjust the delay time (in seconds) as needed
    done
}

# Main script
main() {
    # Initialize log file
    echo "Script Log" > "$log_file"
    
    # Perform actions and log them
    action1="Performed action 1"
    action2="Performed action 2"
    action3="Performed action 3"
    
    log_action "$action1"
    log_action "$action2"
    log_action "$action3"
    
    # Display changes with a delay
    files_changed=("file1.txt" "file2.txt" "file3.txt")
    display_with_delay "${files_changed[@]}"
}

# Run the main script