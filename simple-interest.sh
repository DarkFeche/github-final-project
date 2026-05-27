#!/bin/bash
# This script calculates simple interest given principal, annual rate of interest and time period in years.
# Do not use this in production. Sample code for instructional purposes only.

# Author: Federico Ledesma
# Additional Contributors: ibm-developer-skills-network

# Input:
# p, principal amount
# t, time period in years
# r, annual rate of interest

# Output:
# simple interest = p*t*r / 100

echo "------------------------------------------------"
echo "        Simple Interest Calculator              "
echo "------------------------------------------------"

echo "Enter the principal amount:"
read p

echo "Enter rate of interest per year (as a percentage, e.g., 5 for 5%):"
read r

echo "Enter time period in years:"
read t

# Calculation using 'bc' or basic arithmetic for scale (handles decimals if needed)
# Since standard bash only does integer math, we use 'awk' or scale to keep it compatible
s=$(echo "scale=2; $p * $t * $r / 100" | bc -l 2>/dev/null || awk "BEGIN {print $p * $t * $r / 100}")

echo "------------------------------------------------"
echo "The Simple Interest is: $s"
echo "------------------------------------------------"

