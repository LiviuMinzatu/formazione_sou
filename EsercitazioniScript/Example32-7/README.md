# progress-bar2.sh

A Bash script that simulates a **progress bar** during the execution of a long-running process. Useful for providing visual feedback to the user while a script is waiting.

---

## Description

This script:

- Displays a progress bar using a sequence of `.` printed at regular intervals  
- Runs the progress bar in the background  
- Simulates a "long process" using `sleep`  
- Stops the progress bar once the process is complete  
- Handles `CTRL+C` interrupts gracefully using signals and `trap`

---

## How It Works

1. The progress bar prints one dot per second (`interval=1`)  
2. The "long process" lasts 10 seconds (`long_interval=10`)  
3. At the end, it prints `Finished!`  
4. If interrupted (`CTRL+C`), the bar stops cleanly and exits

---

## How to Run

Make sure to use **`bash`** to run the script (not `sh`):

```bash
bash progress-bar2.sh
