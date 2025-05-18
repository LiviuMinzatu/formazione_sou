# Log Cleanup Script

This simple Bash script is used to **clean common log files** in a Linux system. It's a basic example for practicing shell commands and log file management.

---

## What the Script Does

1. Navigates to the `/var/log` directory  
2. Empties the contents of the `messages` and `wtmp` files (resets them to empty)  
3. Displays the confirmation message: `"Log files cleaned up."`

---

## Important Notes

- The script **must be run as `root`**, otherwise it won't have permission to modify the log files.  
- This script **does not delete the log files**, it only clears their contents.

---

## How to Run

Open a terminal and execute:

```bash
sudo bash script_name.sh
