# Cleaner Script

A **simple and effective Bash script** to clean up a directory by deleting all files **smaller than 10 KB**.

---

## Description

This script allows you to select a folder and automatically removes all files below the **10 kilobyte** threshold. It's useful for:

- Cleaning up unnecessary files  
- Deleting temporary test outputs  
- Reducing space used by small files

---

## How It Works

1. The script prompts the user to enter a directory path (PATH).
2. It checks whether the directory actually exists.
3. It uses the `find` command to locate and delete all files smaller than 10 KB.
4. Each deleted file is displayed individually.
5. A confirmation message is printed at the end.

---

## Example Usage

```bash
$ ./cleanup.sh
Enter the path of the directory: /home/user/Desktop/project
...
'deleted file1.txt'
'deleted test.log'
Files smaller than 10 KB have been successfully deleted.
