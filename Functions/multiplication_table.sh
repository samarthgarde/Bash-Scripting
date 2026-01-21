#!/bin/bash

print_table() {
	num=$1
	i=1
	echo "multiplication table of $num "
	while [ $i -le 10 ]; do
		echo "multiplication table of $num X $i = $(($num * $i))"
		((i++))
	done
}

echo "Enter a number"
read number

print_table $number

