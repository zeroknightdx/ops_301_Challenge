# Script Name:                 Drirectory Creation
# Author:                       Michael Plaskett    
# Date of latest revision:      09/05/23
# Purpose:                     Creating driectorys in python
# Resource: 

#!/usr/bin/env python3

# Import libraries
import os

# Declaration of functions
def process_directory(user_path):
    for (root, dirs, files) in os.walk(user_path):
        # Print the current directory
        print("==root==")
        print(root)
        
        # Print the subdirectories
        print("==dirs==")
        print(dirs)
        
        # Print the files in the current directory
        print("==files==")
        print(files)

# Main
if __name__ == "__main__":
    # Read user input for the file path
    user_path = input("Enter a file path: ")
    
    # Call the function and pass the user's input as an argument
    process_directory(user_path)