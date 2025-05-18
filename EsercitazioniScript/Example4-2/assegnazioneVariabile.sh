#!/bin/bash
# Naked Variables Example

echo  # Print an empty line

a=879  # Assign the value 879 to variable a
echo "The value of \"a\" is $a."  # Display the current value of a

let a=16+5  # Reassign variable a using integer addition
echo "The value of \"a\" is now $a."  # Display the updated value of a

echo  # Print an empty line

echo -n "Values of \"a\" in the loop are: "  # Print text without a newline
# The values "7 8 9 11" will appear on the same line

for a in 7 8 9 11  # Start a loop with variable a
do
  echo -n "$a "  # Print each value of a followed by a space, no newline
done
# End of for loop

echo
echo  # Print two empty lines

echo -n "Enter \"a\": "  # Prompt the user to input a new value for a
read a  # Read user input into variable a
echo "The value of \"a\" is now $a."  # Display the new value of a

echo  # Print an empty line

exit 0  # End of script
