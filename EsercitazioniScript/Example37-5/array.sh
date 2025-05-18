#!/bin/bash

# Declare an associative array
declare -A address

# Assign values to the associative array
address[Charles]="414 W. 10th Ave., Baltimore, MD 21236"
address[John]="202 E. 3rd St., New York, NY 10009"
address[Wilma]="1854 Vermont Ave, Los Angeles, CA 90023"

# Print the addresses associated with each key
echo "Charles's address is ${address[Charles]}."
echo "Wilma's address is ${address[Wilma]}."
echo "John's address is ${address[John]}."

# Print an empty line
echo

# Print all the keys in the associative array
echo "${!address[*]}"
