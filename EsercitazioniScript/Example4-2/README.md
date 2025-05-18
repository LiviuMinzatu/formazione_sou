# Variables Script

This Bash script demonstrates how to use **"naked" variables** (implicitly typed), and is a great example for learning the basics of variables in shell scripting.

---

## What the Script Does

1. Assigns and prints the value of the variable `a`  
2. Reassigns a new value to `a` using an arithmetic expression  
3. Executes a `for` loop that prints multiple values of `a` on the same line  
4. Prompts the user to enter a new value for `a` and prints it

---

## Technical Details

- Uses `let` for arithmetic operations  
- Uses `echo -n` to print without a newline  
- Uses `read` to capture keyboard input  
- Ends with `exit 0` to indicate successful execution

---

## How to Run

In the terminal, make the script executable and run it:

```bash
chmod +x script_name.sh
./script_name.sh
