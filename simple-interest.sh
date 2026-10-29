#!/bin/bash

# Simple Interest Calculator in Bash

echo "----------------------------------------"
echo "       Simple Interest Calculator       "
echo "----------------------------------------"

# Read principal amount
read -p "Enter Principal Amount ($): " principal

# Read rate of interest
read -p "Enter Annual Rate of Interest (%): " rate

# Read time period
read -p "Enter Time Period (in years): " time

# Calculate Simple Interest and Total Amount using 'bc' for floating-point math
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total=$(echo "scale=2; $principal + $interest" | bc)

echo "----------------------------------------"
echo "Results:"
echo "Simple Interest: $$interest"
echo "Total Amount:    $$total"
echo "----------------------------------------"
