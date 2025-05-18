# Exit Status Script

This simple Bash script demonstrates how to check the **exit status** of executed commands. It's a great exercise to understand how Bash handles command success and failure.

---

## What the Script Does

1. Executes the command `echo hello`  
   - Prints `hello`  
   - Displays the exit status (`$?`), which will be `0` (success)

2. Executes a non-existent command (`lskdf`)  
   - Bash will return an error  
   - The exit status will be non-zero (failure)

3. Prints an empty line

4. Ends the script with a custom exit code: `exit 113`

---

## How to Run

Make the script executable and run it:

```bash
chmod +x script_name.sh
./script_name.sh
