#!/bin/bash

ROOTUSER_NAME="root"

# Get the current username (alternative: whoami)
username=$(id -nu)

if [ "$username" = "$ROOTUSER_NAME" ]; then
  echo "Rooty, toot, toot. You are root."
else
  echo "You are just a regular fella."
fi

# Display the current username and the expected root username
echo "$username"
echo "$ROOTUSER_NAME"

exit 0
