#!/bin/bash

echo "Enter a number:"
read num

if [ "$num" -gt 0 ] && [ "$num" -lt 100 ]; then
    echo "Number is between 1 and 99"
fi

if [ "$num" -lt 0 ] || [ "$num" -gt 100 ]; then
    echo "Number is outside 1 to 100"
fi

if [ "$num" -eq 50 ]; then
    echo "Number is 50"
fi

