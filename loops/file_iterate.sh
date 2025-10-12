#!/bin/bash

file_path="/home/sam/Projects/Bash_Scripting/loops/file.txt"

for file in $(cat $file_path); do
	echo "$file"
done
