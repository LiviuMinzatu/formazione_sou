#!/bin/bash
# progress-bar2.sh
# Author: Graham Ewart (with reformatting by the ABS Guide author)
# Translated and explained for clarity.

# NOTE: Must be run with Bash — it won't work correctly with sh.

interval=1           # Time between dots (in seconds)
long_interval=10     # Duration of the simulated long-running process

{
  trap "exit" SIGUSR1  # Gracefully stop the background loop when receiving SIGUSR1

  # Print two initial delays before starting the loop
  sleep $interval
  sleep $interval

  while true; do
    echo -n '.'       # Print a dot to show progress
    sleep $interval
  done
} &                   # Run the loop in the background

pid=$!                # Capture the background process ID

# Define behavior on script exit or interruption (e.g., Ctrl+C)
trap "echo !; kill -USR1 $pid; wait $pid" EXIT

# Simulated long-running process
echo -n 'Long-running process '
sleep $long_interval
echo ' Finished!'

# Stop the progress bar
kill -USR1 $pid
wait $pid

trap EXIT  # Restore default EXIT behavior

exit $?    # Exit with the status of the last command
