# Script Name:                 python cconditional statements
# Author:                       Michael Plaskett    
# Date of latest revision:      09/07/23
# Purpose:          TO grasp the fundamental of conditional statements
# Resource: 

# Example 1: Using '=='
car_speed = 60
speed_limit = 65

if car_speed == speed_limit:
    print("The car is traveling at the speed limit.")
elif car_speed < speed_limit:
    print("The car is driving below the speed limit.")
else:
    print("The car is driving above the speed limit.")

# Example 2: Using '!='
car_make = "Toyota"
preferred_make = "Honda"

if car_make != preferred_make:
    print("This is not your preferred car make.")
else:
    print("This is your preferred car make.")

# Example 3: Using '<'
car_age = 5
max_age = 10

if car_age < max_age:
    print("The car is relatively young.")
elif car_age == max_age:
    print("The car is exactly the maximum allowed age.")
else:
    print("The car is quite old.")

# Example 4: Using '>'
car_price = 25000
budget = 20000

if car_price > budget:
    print("The car is above your budget.")
elif car_price == budget:
    print("The car is exactly within your budget.")
else:
    print("The car is within your budget.")

# Example 5: Using '<=' and '>='
car_mileage = 30000
good_mileage = 50000
bad_mileage = 20000

if car_mileage <= bad_mileage:
    print("The car has low mileage.")
elif car_mileage >= good_mileage:
    print("The car has high mileage.")
else:
    print("The car has moderate mileage.")