# Periodic Docker Container Migration on Two Vagrant Nodes

This project demonstrates how to perform **automatic migration of a Docker container** between two virtual machines (`node1` and `node2`) created with **Vagrant**. The container used is `ealen/echo-server`, a simple HTTP test server.

## Requirements

- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)
- Bash (Unix-like environment)

## How It Works

1. Two VMs (`node1` and `node2`) are created with Ubuntu 18.04 and Docker pre-installed.
2. A Bash script (`start.sh`) launches the `echo-server` container on `node1`.
3. The container remains active for 60 seconds, with a visual loading bar.
4. The container is then stopped and removed from `node1`.
5. The same container is started on `node2` for another 60 seconds.
6. The cycle continues indefinitely, alternating the container execution between the two nodes.

## How to Start the Project

1. Clone the repository:
   ```bash
   git clone https://github.com/liviuminzatu/formazione_sou.git
