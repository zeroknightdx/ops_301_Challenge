# Script Name:                 Python File Handling
# Author:                       Michael Plaskett    
# Date of latest revision:      09/29/23
# Purpose:                     File Handling in python
# Resource: 

#!/usr/bin/env python3

# Import libraries
import os

# Create a new .txt file and append three lines
with open("example.txt", "w") as file:
    file.write("This is line 1.\n")
    file.write("This is line 2.\n")
    file.write("This is line 3.\n")

# Read and print the first line
with open("example.txt", "r") as file:
    first_line = file.readline()
    print("First Line:", first_line.strip())  # Strip to remove newline character

# Delete the .txt file

if os.path.exists("example.txt"):
    os.remove("example.txt")
    print("File 'example.txt' has been deleted.")
else:
    print("File 'example.txt' does not exist.")
