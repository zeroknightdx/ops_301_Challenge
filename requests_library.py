# Script Name:                Python requests Library
# Author:                       Michael Plaskett    
# Date of latest revision:      09/11/23
# Purpose:          TO grasp the fundamental of Python requests Library
# Resource:        

import requests

# Prompt the user to enter a destination URL
destination_url = input("Enter the destination URL: ")

# Prompt the user to select an HTTP method
http_method = input("Select an HTTP method (GET, POST, PUT, DELETE, HEAD, PATCH, OPTIONS): ").upper()

# Define a dictionary to map HTTP status codes to plain terms
status_code_mapping = {
    200: "OK",
    201: "Created",
    204: "No Content",
    400: "Bad Request",
    401: "Unauthorized",
    403: "Forbidden",
    404: "Site not found",
    500: "Internal Server Error",
}

# Print the request information and ask for confirmation
print(f"Sending a {http_method} request to {destination_url}")
confirmation = input("Confirm the request (yes/no): ").lower()

if confirmation == "yes":
    try:
        # Perform the HTTP request
        response = requests.request(http_method, destination_url)

        # Check if the response status code is in the mapping
        if response.status_code in status_code_mapping:
            status_message = status_code_mapping[response.status_code]
        else:
            status_message = "Unknown Status Code"

        # Print the response header information
        print(f"Response Status: {response.status_code} - {status_message}")
        for header, value in response.headers.items():
            print(f"{header}: {value}")
    except requests.exceptions.RequestException as e:
        print(f"An error occurred: {e}")
else:
    print("Request canceled.")