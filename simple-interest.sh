#!/bin/bash

# Function to check if input is a number
is_number() {
  [[ $1 =~ ^[0-9]+([.][0-9]+)?$ ]]
}

# Get principal
while true; do
  echo "Enter Principal Amount:"
  read principal
  if is_number "$principal"; then
    break
  else
    echo "Invalid input. Please enter a valid number."
  fi
done

# Get rate of interest
while true; do
  echo "Enter Rate of Interest (in %):"
  read rate
  if is_number "$rate"; then
    break
  else
    echo "Invalid input. Please enter a valid number."
  fi
done

# Get time in years
while true; do
  echo "Enter Time (in years):"
  read time
  if is_number "$time"; then
    break
  else
    echo "Invalid input. Please enter a valid number."
  fi
done

# Calculate simple interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
echo "Simple Interest is: $simple_interest"

