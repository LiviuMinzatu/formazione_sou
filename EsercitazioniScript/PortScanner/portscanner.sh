#!/bin/bash
# This is a Bash script that scans TCP ports on a specified machine.

# Check that exactly 3 arguments were provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <IP/host> <start_port> <end_port>"
    exit 1
fi

# Assign arguments to readable variable names
TARGET=$1         # IP address or hostname
START_PORT=$2     # Starting port number
END_PORT=$3       # Ending port number

# Validate that the ports are integers
if ! [[ "$START_PORT" =~ ^[0-9]+$ ]] || ! [[ "$END_PORT" =~ ^[0-9]+$ ]]; then
    echo "Error: Ports must be positive integers."
    exit 2
fi

# Ensure start port is less than or equal to end port
if [ "$START_PORT" -gt "$END_PORT" ]; then
    echo "Error: Start port must not be greater than end port."
    exit 3
fi

# Begin scan
echo "Scanning $TARGET from port $START_PORT to $END_PORT..."

# Loop through the specified port range
for ((port = START_PORT; port <= END_PORT; port++)); do
    # Use `nc` (netcat) to check if the port is open
    # `timeout 1` prevents hanging on closed ports
    # `-z` tells nc not to send data (just check if port is open)
    # `-v` gives verbose output (suppressed to /dev/null)
    timeout 1 nc -z -v "$TARGET" "$port" 2>/dev/null && echo "Port $port is open"
done
