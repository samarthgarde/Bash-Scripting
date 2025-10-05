#!/bin/bash

# How to store the key value paires in array

declare -A myArray

myArray=([name]=Samarth [height]=5ft [weight]=58kg [favrote]=mango [food]=bhendi)

declare -A students

students=([name]=Rahul [roll_no]=34 [university]=SPPU)

echo "the students array containes an name is  : ${students[name]}"
echo "the my studnets array conatins an roll no  is : ${students[roll_no]}"
echo "the my studnets array conatins an university is : ${students[university]}"

echo "${myArray[*]}"

echo "${myArray[name]}"
echo "${myArray[favrote]}"
