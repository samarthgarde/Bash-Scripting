#!/bin/bash
# Compare two numbers

echo "Enter First no"
read num1
echo "Enter Second no"
read num2

if [ "$num1" -gt "$num2" ]; then
   echo "$num1 is greater then $num2"
elif [ "$num1" -lt "$num2" ];then
   echo "$num1 is lesser than $num2"
else
    echo "$num2 is equal to $num1"
fi

