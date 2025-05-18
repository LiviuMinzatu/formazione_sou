#!/bin/bash
# am-i-root.sh: Am I root or not?

ROOT_UID=0  # Root user always has UID 0

if [ "$UID" -eq "$ROOT_UID" ]; then
  echo "You are root."
else
  echo "You are just an ordinary user (but mom loves you just the same)."
fi

# Display the current user's UID and the root UID for reference
echo "$UID"
echo "$ROOT_UID"

exit 0
