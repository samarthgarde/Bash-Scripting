#!/bin/bash
echo "Enter a number: "
read num

echo "multiplication table of : $ $num"
for i in {1..10}; do
	echo "The multiplication of $num X $i = $(($num * $i))"

done
