#!/bin/bash

# Cleanup Script
# Must be run as root

cd /var/log
# Navigate to the /var/log directory

> messages
# Clear the contents of the 'messages' log file

> wtmp
# Clear the contents of the 'wtmp' log file

echo "Log files cleaned up."
# Display a confirmation message
