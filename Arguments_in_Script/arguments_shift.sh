#!/bin/bash

echo "All arguments initially: $@"

while [ $# -gt 0 ]; do

	echo "Current Argument: $1"
	sleep 1
	shift
done

echo "All Arguments Processed!"
