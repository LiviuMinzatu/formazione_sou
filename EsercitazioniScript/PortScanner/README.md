# TCP Port Scanner

A Bash script that performs a TCP port scan on a specified machine. It checks whether ports within a given range are open or closed, using `nc` (netcat) to test each one.

---

## Features

- Scans TCP ports between two specified numbers
- Checks whether a port is open on a given host or IP address
- Uses the `nc` (netcat) command to perform the port scanning

---

## Requirements

- **Bash**: The script is written in Bash and requires a Unix-like environment
- **Netcat**: The `nc` command must be installed. If it's not available, install it using:

  ```bash
  sudo apt install netcat
