#!/bin/bash

# Prompt the user to enter the first number
echo "Enter the first number:"
read -r num1

# Prompt the user to enter the second number
echo "Enter the second number:"
read -r num2

# Prompt the user to enter the operator
echo "Enter the operator (+, -, *, /):"
read -r operator

# Perform the calculation based on the operator
case $operator in
  +)
    result=$(echo "$num1 + $num2" | bc)
    ;;
  -)
    result=$(echo "$num1 - $num2" | bc)
    ;;
  \*)
    result=$(echo "$num1 * $num2" | bc)
    ;;
  /)
    # Check for division by zero
    if [ "$num2" -eq 0 ]; then
      echo "Error: Division by zero is not allowed."
      exit 1
    fi
    result=$(echo "scale=2; $num1 / $num2
