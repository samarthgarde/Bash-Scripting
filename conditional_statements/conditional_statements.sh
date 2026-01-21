#!/bin/bash
#
echo "Enter a number: "
read num

if [ $num -gt 0 ]; then
	echo "positive number you Enter an number: $num"
elif [ $num -lt 0 ]; then
	echo "negative number you Enter an number: $num"
else 
	echo "Zero"
fi
