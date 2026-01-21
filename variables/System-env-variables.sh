#!/bin/bash

echo "Home directory: $HOME"
echo "Current user: $USER"
echo "Current shell: $SHELL"
echo "Present working directory: $PWD"
echo "Hostname: $HOSTNAME"
echo "Process ID of this script: $$"

current_host=$(hostname)
echo "The user is currently using host: $current_host"

readonly DOB="07/12/2003"
echo "The current user DOB is: $DOB"

