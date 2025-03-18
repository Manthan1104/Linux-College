#!/bin/bash

# Prompt user to enter a system command
echo "Enter a Linux command to execute:"
read user_command

# Execute the command and store the output in a file
$user_command > output.txt
echo "Command output saved to output.txt"

# Display the system configuration
echo "Your System Configuration:"
lscpu

# Prompt user to enter two numbers for mathematical operations
echo "Enter two numbers"
read number1
read number2

while true; do
echo "This is a calculator"

echo "Enter what do you want to do:- +,-,*,/,exit"
read char

case $char in
'+') echo "Addition is:" $((number1+number2));;
'-') echo "Subtraction is:" $((number1-number2));;
'*') echo "Multiplication is:" $((number1*number2));;
'/') echo "Division is:" $((number1/number2));;
"exit") echo "exiting"
exit 0
;;
*) echo "Enter a valid input" 
esac
echo ""
done