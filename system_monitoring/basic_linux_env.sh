#!/bin/bash

echo "Creating Basic Linux Practice Environment..."

# Create main practice directory
mkdir -p linux_practice
cd linux_practice

# 1. Directory Structure for Navigation Practice
echo "Setting up directories..."
mkdir -p {documents,photos,music,backup,temp}
mkdir -p documents/{personal,work,others}

# 2. Create Sample Files
echo "Creating sample files..."

# Text files for basic operations
echo "This is a sample file." > documents/file1.txt
echo "Another sample file for practice." > documents/file2.txt
echo "Third sample file." > documents/file3.txt

# Create numbered files for sorting practice
for i in {1..5}; do
    echo "Line $i" > documents/personal/numbered_$i.txt
done

# Create a sample log file
cat > documents/work/sample.log << EOF
2024-02-16 10:00:00 INFO: System started
2024-02-16 10:05:00 ERROR: Connection failed
2024-02-16 10:10:00 INFO: Connection restored
2024-02-16 10:15:00 WARNING: High CPU usage
2024-02-16 10:20:00 ERROR: Disk space low
EOF

# Create a sample data file for text processing
cat > documents/work/employees.txt << EOF
John Smith,IT,5000
Jane Doe,HR,4500
Bob Johnson,IT,5200
Alice Brown,Marketing,4800
Charlie Wilson,HR,4600
EOF

# 3. Set Different Permissions
echo "Setting up files with different permissions..."
touch documents/readonly.txt
touch documents/executable.sh
touch documents/restricted.txt

echo "This is a read-only file" > documents/readonly.txt
echo "This is a restricted file" > documents/restricted.txt
echo "echo 'Hello, World!'" > documents/executable.sh

chmod 444 documents/readonly.txt  # read-only for all
chmod 700 documents/restricted.txt  # only owner can access
chmod 755 documents/executable.sh  # executable script

# 4. Create hidden files and directories
echo "Creating hidden files..."
touch .hidden_file
mkdir .hidden_dir
echo "This is a hidden file" > .hidden_file

# 5. Create backup files for copy/move practice
echo "Setting up backup practice files..."
cp documents/file1.txt backup/file1_backup.txt
cp documents/file2.txt backup/file2_backup.txt

echo "✅ Linux Practice Environment Ready"
