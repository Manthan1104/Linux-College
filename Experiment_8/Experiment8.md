# Experiment 8

---

## Experiment Description
This lab focuses on creating and executing shell scripts in Linux to gather system information and perform basic mathematical operations. Additionally, redirection operators are used to store command outputs in files.

---

## Approach

### 1. Steps to Create and Run a Shell Script
1. Open the terminal.
2. Create a new shell script file using the `touch` command:
   ```bash
   touch Experiment8.sh
   ```
3. Open the file in a text editor:
   ```bash
   nano Experiment8.sh
   ```
4. Write the script inside the file.
5. Save and exit the editor (`CTRL + S`, then `CTRL + X`).
6. Give execution permissions to the script:
   ```bash
   chmod +x Experiment8.sh
   ```
7. Run the script:
   ```bash
   bash Experiment8.sh
   ```
8. Follow the prompts to enter inputs and perform calculations.
9. Check the stored output in the generated file.

---

### 2. Shell Script to Print System Information

```bash
# Display the system configuration
echo "Your System Configuration:"
lscpu  # Display CPU information
```

#### Screenshot:
![System Information Script](./Systeminfo.png)

---

### 3. Shell Script to Perform Basic Mathematical Calculations

```bash
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
```

#### Screenshot:
![Mathematical Calculation Script](./mathcalculation.png)

---

### 4. Shell Script to Use redirection operators to store the output of input commands.

```bash
#!/bin/bash
# Prompt user to enter a system command
echo "Enter a Linux command to execute:"
read user_command  # Read user input

# Execute the command and store the output in a file
$user_command > output.txt
echo "Command output saved to output.txt"

```

#### Input:
```
ls
```
#### Screenshot:
![Mathematical Calculation Script](./output+output_file.png)

---

## Conclusion
In this lab, you practiced:
1. Creating and executing shell scripts in Linux.
2. Printing system information and storing it in a file.
3. Performing basic mathematical calculations using user inputs.
4. Using redirection operators to store command outputs.

Mastering shell scripting is essential for automating tasks and managing system operations efficiently.
