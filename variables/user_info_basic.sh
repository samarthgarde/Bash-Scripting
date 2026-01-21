#!/bin/bash

read -p "Please enter your name: " name

echo "Hello $name"
echo "Below is the information about the user and current directory:"
echo "Date and time: $(date)"
echo "User: $(whoami)"
echo "Current directory: $(pwd)"

