# Associative Arrays in Bash: Address Book

This script demonstrates the use of **associative arrays** in Bash through a simple address book that maps names to addresses.

---

## Description

The script creates an associative array named `address` and assigns specific addresses to a few names. Then it:

- Prints each individual address associated with the names
- Displays all the keys (names) stored in the address book

---

## Key Concepts

| Concept                  | Example                              |
|--------------------------|--------------------------------------|
| Associative array        | `declare -A array_name`              |
| Key/value assignment     | `array[key]="value"`                 |
| Accessing values         | `${array[key]}`                      |
| Listing keys             | `${!array[*]}`                       |

---

## How to Run

Make sure you are using **Bash version 4.0 or later**, since associative arrays are **not supported** in older versions.

```bash
bash address-book.sh
