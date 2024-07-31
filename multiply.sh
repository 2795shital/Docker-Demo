#!/bin/bash

# Check if exactly two arguments are provided
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <number1> <number2>"
  exit 1
fi

# Read the numbers from arguments
num1=$1
num2=$2

# Perform the multiplication
result=$(echo "$num1 * $num2" | bc)

# Print the result
echo "Result: $result"
