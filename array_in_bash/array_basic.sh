#!/bin/bash

# Mixed array
array=(1 "hello world" 39.09 "Hey guys" "hey public")

# Student details
students=("rahul" "sam" "omkar")
roll_no=(18 83 80)

echo "Students names: ${students[@]}"
echo "Students roll numbers: ${roll_no[@]}"

echo "Student at index 0: ${students[0]}"
echo "Student at index 1: ${students[1]}"

# Add new roll numbers
roll_no+=(67 89 9)

echo "Updated roll number list: ${roll_no[@]}"

# Array lengths
echo "Total number of students: ${#students[@]}"
echo "Total number of roll numbers: ${#roll_no[@]}"

