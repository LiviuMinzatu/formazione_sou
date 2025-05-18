import subprocess
import time
from datetime import datetime

# Node map based on the parity of the current minute
NODES = {
    "even": "node1",
    "odd": "node2"
}

# Docker container name and image
CONTAINER_NAME = "echo-server"
IMAGE = "ealen/echo-server"

# Build the SSH command to execute on a specific node
def ssh_command(node, command):
    return f'vagrant ssh {node} -c "{command}"'

# Stop the Docker container on the given node
def stop_container(node):
    subprocess.run(
        ssh_command(node, f"sudo docker rm -f {CONTAINER_NAME} || true"),
        shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL
    )

# Start the Docker container on the given node
def start_container(node):
    subprocess.run(
        ssh_command(node, f"sudo docker run -d --name {CONTAINER_NAME} -p 80:80 {IMAGE}"),
        shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL
    )

# Return "even" or "odd" depending on the current minute
def minute_parity():
    return "even" if datetime.now().minute % 2 == 0 else "odd"

# Display a loading bar for a given duration
def loading_bar(duration, step=1):
    for i in range(0, duration, step):
        bar = "█" * (i // step) + "-" * ((duration - i) // step)
        print(f"\r⏳ Next check in {duration - i:02d}s | {bar}", end="", flush=True)
        time.sleep(step)
    print("\r", end="")

# Main loop to monitor time and manage container switching
def loop():
    previous_state = None
    print("🔁 Starting minute-based monitoring...\n")
    
    while True:
        parity = minute_parity()
        current_minute = datetime.now().minute

        if parity != previous_state:
            print(f"\n🕒 Minute {current_minute:02d} ({parity.upper()})")
            print(f"🟢 Starting container on {NODES[parity]}")
            start_container(NODES[parity])

            other = "even" if parity == "odd" else "odd"
            print(f"🔴 Stopping container on {NODES[other]}")
            stop_container(NODES[other])

            previous_state = parity
        else:
            print(f"\n🕒 Minute {current_minute:02d} → no change, container already active on {NODES[parity]}")

        loading_bar(10)

# Entry point
if __name__ == "__main__":
    try:
        loop()
    except KeyboardInterrupt:
        print("\n🛑 Manual interruption. Exiting program.")
