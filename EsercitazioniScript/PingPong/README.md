# Docker Container Migrator

A Python script that **automatically starts and stops** a Docker container on two Vagrant nodes (`node1` and `node2`) **based on the parity of the current minute**. It's useful for simulating a "failover" or periodic migration behavior in a distributed environment.

---

## Features

- Monitors the current system time (in minutes)
- Starts the `ealen/echo-server` container on:
  - `node1` if the current minute is even
  - `node2` if the current minute is odd
- Stops the container running on the opposite node
- Displays a loading bar while waiting between checks

---

## Requirements

- [Python 3.x](https://www.python.org/)
- [Vagrant](https://www.vagrantup.com/)
- [Docker](https://www.docker.com/) installed on both nodes
- Two Vagrant-managed VMs named `node1` and `node2`

---

## How to Run

Make sure both VMs are up and running:

```bash
vagrant up
