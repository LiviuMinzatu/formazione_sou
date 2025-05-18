#!/bin/bash

MIN_PARAMETERS=10  # Minimum number of parameters required

echo  # Print an empty line

echo "The name of the script is: \"$0\"."  # Print the full script name (with path)
echo "The script's filename is: \"$(basename $0)\"."  # Print only the script's filename

echo  # Print an empty line

# Check and display the first three parameters if they exist
if [ -n "$1" ]; then
  echo "Parameter #1 is: $1"
fi

if [ -n "$2" ]; then
  echo "Parameter #2 is: $2"
fi

if [ -n "$3" ]; then
  echo "Parameter #3 is: $3"
fi

# ... and so on

# Check and display the 10th parameter using braces to avoid ambiguity with $1 and 0
if [ -n "${10}" ]; then
  echo "Parameter #10 is: ${10}"
fi

echo "-----------------------------------"
echo "List of all parameters: $*"  # Print all parameters using $*

# Check if the number of parameters is less than the required minimum
if [ $# -lt "$MIN_PARAMETERS" ]; then
  echo
  echo "This script requires at least $MIN_PARAMETERS arguments!"
fi

echo

exit 0  # Exit the script successfully
