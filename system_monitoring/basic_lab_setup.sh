#!/bin/bash

# Exit on error
set -e

# Color definitions for better readability
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# Logging functions
log() { echo -e "${GREEN}[$(date +'%Y-%m-%d %H:%M:%S')]${NC} $1"; }
error() { echo -e "${RED}[ERROR]${NC} $1"; }
info() { echo -e "${BLUE}[INFO]${NC} $1"; }

# Base directory setup
BASE_DIR=~/linux_practice_lab
log "Creating Linux Practice Lab at $BASE_DIR"

# Create main directory structure
mkdir -p "$BASE_DIR"/{basic_commands,file_ops,users,permissions,logs,practice,datasets}

# 1. Basic Commands Practice Environment
BASIC_DIR="$BASE_DIR/basic_commands"
log "Setting up basic commands practice environment..."

# Create nested directory structure for navigation practice
mkdir -p "$BASIC_DIR"/{projects,documents}/{current,archive}/{docs,data}
touch "$BASIC_DIR/projects/current/docs/"{report.txt,notes.md,plan.pdf}
touch "$BASIC_DIR/projects/current/data/"{data.csv,config.json}

# Add some hidden files and directories
mkdir -p "$BASIC_DIR/.config"
touch "$BASIC_DIR/.hidden_file"

# 2. File Operations Practice
FILE_OPS="$BASE_DIR/file_ops"
log "Setting up file operations practice environment..."

# Create log file with mixed content
cat > "$FILE_OPS/application.log" << 'EOF'
2024-02-23 10:00:01 ERROR [Server1] Database connection failed
2024-02-23 10:00:05 INFO  [Server1] Retry attempt 1
2024-02-23 10:00:10 ERROR [Server2] Memory usage critical: 95%
2024-02-23 10:00:15 WARN  [Server1] High CPU usage: 80%
2024-02-23 10:00:20 ERROR [Server3] Disk space low: 5% remaining
2024-02-23 10:00:25 INFO  [Server2] Service restarted successfully
2024-02-23 10:00:30 DEBUG [Server1] Cache cleared: 1000 entries removed
2024-02-23 10:00:35 INFO  [Server3] Backup completed: 500MB processed
EOF

# Create CSV file for text processing practice
cat > "$FILE_OPS/employees.csv" << 'EOF'
id,name,department,role,salary,join_date
1,John Doe,IT,Developer,75000,2023-01-15
2,Jane Smith,HR,Manager,85000,2023-02-01
3,Bob Wilson,IT,SysAdmin,78000,2023-03-10
4,Alice Brown,Marketing,Lead,82000,2023-04-05
5,Charlie Davis,IT,DevOps,80000,2023-05-20
EOF

# Create file with duplicates for sort/uniq practice
cat > "$FILE_OPS/server_list.txt" << 'EOF'
server1.example.com
server2.example.com
server1.example.com
server3.example.com
server2.example.com
server4.example.com
server1.example.com
server5.example.com
EOF

# 3. User Management Practice
log "Setting up user management practice environment..."

# Create mock passwd file for practice
cat > "$BASE_DIR/users/mock_passwd" << 'EOF'
root:x:0:0:root:/root:/bin/bash
admin:x:1000:1000:System Admin:/home/admin:/bin/bash
webuser:x:1001:1001:Web Server User:/home/webuser:/bin/bash
dbuser:x:1002:1002:Database User:/home/dbuser:/bin/bash
devuser:x:1003:1003:Developer:/home/devuser:/bin/bash
EOF

# Create mock group file
cat > "$BASE_DIR/users/mock_group" << 'EOF'
root:x:0:
sudo:x:27:admin
developers:x:1001:devuser,webuser
dbadmins:x:1002:dbuser,admin
docker:x:1003:devuser,admin
EOF

# 4. Permissions Practice
PERM_DIR="$BASE_DIR/permissions"
log "Setting up permissions practice environment..."

# Create files with various permissions
touch "$PERM_DIR"/{public,private,group_shared}.txt
echo "Public content" > "$PERM_DIR/public.txt"
echo "Private content" > "$PERM_DIR/private.txt"
echo "Group shared content" > "$PERM_DIR/group_shared.txt"

# Create executable scripts
cat > "$PERM_DIR/backup.sh" << 'EOF'
#!/bin/bash
echo "Backing up files..."
# Backup logic would go here
EOF

cat > "$PERM_DIR/monitor.sh" << 'EOF'
#!/bin/bash
echo "Monitoring system..."
# Monitoring logic would go here
EOF

# Set various permissions
chmod 644 "$PERM_DIR/public.txt"
chmod 600 "$PERM_DIR/private.txt"
chmod 664 "$PERM_DIR/group_shared.txt"
chmod 755 "$PERM_DIR/backup.sh"
chmod 700 "$PERM_DIR/monitor.sh"

# 5. Practice Exercises
cat > "$BASE_DIR/practice/exercises.md" << 'EOF'
# Linux Command Practice Exercises

## Basic Commands Practice
1. List all files in the projects directory, including hidden files
2. Find all .txt files in the basic_commands directory
3. Count the number of files in each subdirectory
4. Create a new directory and move all .pdf files into it

## File Operations Practice
1. Find all ERROR messages in application.log
2. Count occurrences of each log level (ERROR, INFO, WARN, DEBUG)
3. Extract the department and salary columns from employees.csv
4. Sort server_list.txt and remove duplicates
5. Find all lines containing "Server1" in application.log

## User Management Practice
1. List all users in the developers group
2. Find users with /bin/bash as their shell
3. Count the number of users in each group
4. Extract usernames and their home directories

## Permissions Practice
1. Find all files with execute permissions
2. List files that are readable by everyone
3. Find files owned by specific users
4. Change permissions to make a file read-only
EOF

# 6. Sample Datasets
DATASET_DIR="$BASE_DIR/datasets"
log "Setting up sample datasets..."

# Create a sample web server log
cat > "$DATASET_DIR/access.log" << 'EOF'
192.168.1.100 - - [23/Feb/2024:10:00:01 +0000] "GET /index.html HTTP/1.1" 200 2326
192.168.1.101 - - [23/Feb/2024:10:00:02 +0000] "GET /images/logo.png HTTP/1.1" 200 5632
192.168.1.102 - - [23/Feb/2024:10:00:03 +0000] "POST /api/login HTTP/1.1" 401 289
192.168.1.103 - - [23/Feb/2024:10:00:04 +0000] "GET /css/style.css HTTP/1.1" 200 1836
192.168.1.102 - - [23/Feb/2024:10:00:05 +0000] "POST /api/login HTTP/1.1" 200 347
EOF

# Create summary file
cat > "$BASE_DIR/README.md" << 'EOF'
# Linux Practice Lab

This environment provides hands-on practice for essential Linux commands and operations.

## Directory Structure
- basic_commands/: Navigation and basic command practice
- file_ops/: Text processing and file manipulation
- users/: User and group management practice
- permissions/: File permissions exercises
- datasets/: Sample data for analysis
- practice/: Exercise instructions and tasks

## Getting Started
1. Navigate to different directories to practice specific skills
2. Check practice/exercises.md for guided exercises
3. Use datasets/ for real-world data analysis practice

## Tips
- Use `man` command to learn more about any command
- Create backup copies before modifying files
- Check file permissions before operations
- Use tab completion to navigate efficiently
EOF

log "Linux Practice Lab setup complete!"
info "Lab location: $BASE_DIR"
info "Start with: cd $BASE_DIR && cat README.md"

