#!/bin/bash

echo hello  # Prints "hello"
echo $?     # Prints the exit status of the previous command (should be 0 for success)

lskdf       # Invalid command (not recognized)
echo $?     # Prints the exit status of the previous command (non-zero for error)

echo        # Prints an empty line

exit 113    # Exit the script with status code 113
