#!/bin/bash
echo "Enter a number: "
read num

i=1
echo "Multiplication table of : $num"
while [ $i -le 10 ]; do
	echo "the multiplication table of $num X $i = $(($i * $num))"
	let i++
done
