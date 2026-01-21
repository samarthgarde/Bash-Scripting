# Arguments in Bash Script

This directory contains Bash scripts that demonstrate how to use **command-line arguments** in shell scripting.

Command-line arguments allow users to pass values to a script at runtime, making scripts dynamic and reusable.

---

## 📂 Files Included

### 1️⃣ basic_arguments.sh

This script demonstrates:
- Script name
- Individual arguments
- All arguments together
- Total number of arguments

#### Script Content:
```bash
./basic_arguments.sh arg1 arg2

Output:

$0 → Script name

$1 → First argument

$2 → Second argument

$@ → All arguments

$# → Number of arguments
```
### 2️⃣ arguments_shift.sh

This script demonstrates the use of the shift command, which shifts command-line arguments to the left.

Each shift removes the first argument and moves the next argument to $1

### Script Content:
```./arguments_shift.sh one two three```

### Features:
- Loops through all arguments
- Prints one argument at a time
- Uses shift to process arguments sequentially

### ▶️ How to Run
```chmod +x basic_arguments.sh arguments_shift.sh```
### Run the scripts:
```./basic_arguments.sh apple banana
./arguments_shift.sh red blue green```
