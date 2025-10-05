#!/bin/bash

array=(1 "hello world" 39.09 "Hey guys" "hey public")

students=("rahul" "sam" "omkar")
roll_no=(18 83 80)

echo "the students name is the: ${students[@]}"

echo "the roll_no of the students are: ${roll_no[@]}"

echo "the index 0 has the value: ${students[0]}"
echo "the index 1 has the value: ${students[1]}"

roll_no+=(67 89 09)

echo "update new roll_no list : ${roll_no[@]}"

# echo "${array[@]}"
# # to check the array length

echo "the lenght of an  roll_no is : ${#roll_no[*]}"

echo "the lenght of an students is : ${#students[*]}"
