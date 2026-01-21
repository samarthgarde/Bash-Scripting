#!/bin/bash

is_even() {
    if (( $1 % 2 == 0 )); then
        return 0
    else
        return 1
    fi
}

read -p "Enter a number: " n

# Validate input
if ! [[ "$n" =~ ^-?[0-9]+$ ]]; then
    echo "Please enter a valid integer"
    exit 1
fi

if is_even "$n"; then
    echo "$n is even"
else
    echo "$n is odd"
fi

