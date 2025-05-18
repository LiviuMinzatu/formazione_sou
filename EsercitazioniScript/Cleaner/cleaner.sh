#!/bin/bash

# Prompt the user to enter the path of the target directory
read -p "Enter the path of the directory: " directory

# Check if the provided path exists and is a directory
if [ ! -d "$directory" ]; then
  echo "Error: The specified directory does not exist!"
  exit 1
fi

# Use the 'find' command to locate and delete files smaller than 40 KB
# -type f     limits the search to regular files (not directories)
# -size -40k  matches files smaller than 40 kilobytes
# -exec rm -v deletes each matching file with verbose output
# {}          is replaced with the current file found
# \;          terminates the -exec clause
find "$directory" -type f -size -40k -exec rm -v {} \;

# Final message to inform the user of successful completion
echo "Files smaller than 40 KB have been successfully deleted."
