#!/bin/bash

# Function to display a visual loading bar
loading_bar() {
    duration=${1:-60}        # First argument: duration in seconds (default: 60)
    bar_length=50            # Length of the loading bar

    echo -n "Loading: ["
    for ((i = 0; i <= duration; i++)); do
        percent=$((i * 100 / duration))
        filled=$((i * bar_length / duration))
        empty=$((bar_length - filled))

        printf "\rLoading: ["
        printf "%0.s#" $(seq 1 $filled)
        printf "%0.s-" $(seq 1 $empty)
        printf "] %3d%%" "$percent"

        sleep 1
    done

    echo -e "\nCompleted!"
}

# Infinite loop for container migration
while true; do
  echo "== Starting container on node1 =="
  vagrant ssh node1 -c "docker run -d --name echo-server -p 8080:80 ealen/echo-server"

  echo "== Waiting 60 seconds =="
  loading_bar 60

  echo "== Stopping container on node1 =="
  vagrant ssh node1 -c "docker stop echo-server && docker rm echo-server"

  echo "== Starting container on node2 =="
  vagrant ssh node2 -c "docker run -d --name echo-server -p 8080:80 ealen/echo-server"

  echo "== Waiting 60 seconds =="
  loading_bar 60

  echo "== Stopping container on node2 =="
  vagrant ssh node2 -c "docker stop echo-server && docker rm echo-server"
done
