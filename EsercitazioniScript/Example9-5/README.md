# User Privilege Check in Bash

This folder contains **two Bash scripts** that check whether the script is being run by the root user, using two different approaches:

- UID-based check (`am-i-root.sh`)
- Username-based check (`check-root-name.sh`)

---

## Files Included

- `am-i-root.sh` → Checks if the user is root by verifying the UID.
- `check-root-name.sh` → Checks if the username is "root".

---

## Script 1 — `am-i-root.sh`

Determines user privileges by checking the **UID** of the running process.

### How It Works

- UID `0` → root user  
- Any other UID → regular user

### How to Run

```bash
bash am-i-root.sh          # As a regular user
sudo bash am-i-root.sh     # As root
