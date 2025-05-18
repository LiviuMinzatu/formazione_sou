# Bash Parameters Script

This Bash script demonstrates how to read and handle **command-line parameters**, checking their presence and printing their values. It's useful for understanding how to interact with arguments in a shell script.

---

## What the Script Does

1. Prints the **script name** with and without the full path (`$0`, `basename $0`)
2. Checks and prints the first **ten parameters** (`$1`, `$2`, ..., `${10}`)
3. Displays **all received parameters** using `$*`
4. Verifies if at least **10 parameters** were passed  
   - If not, it prints a warning message

---

## How to Run

Run the script by passing parameters directly from the terminal:

```bash
bash script_name.sh arg1 arg2 arg3 ... arg10
