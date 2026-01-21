#!/bin/bash

echo "We are defining the variables"

folder_name="scripts"
file1="test.py"
file2="sum.sh"

echo "Creating folder: $folder_name"
mkdir -p "$folder_name"

echo "Creating two files inside $folder_name"
touch "$folder_name/$file1" "$folder_name/$file2"

echo "Two files $file1 and $file2 are created inside $folder_name successfully"

echo "Below is the structure of $folder_name"
ls -R "$folder_name"

