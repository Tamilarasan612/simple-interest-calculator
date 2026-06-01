#!/bin/bash

# Simple Interest Calculator
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "============================================"
echo "        Simple Interest Calculator         "
echo "============================================"

# Prompt user for principal amount
echo -n "Enter the principal amount: "
read principal

# Prompt user for rate of interest
echo -n "Enter the rate of interest (% per year): "
read rate

# Prompt user for time period
echo -n "Enter the time period (in years): "
read time

# Calculate simple interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display the result
echo "============================================"
echo "Principal        : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time year(s)"
echo "--------------------------------------------"
echo "Simple Interest  : $simple_interest"
echo "============================================"
