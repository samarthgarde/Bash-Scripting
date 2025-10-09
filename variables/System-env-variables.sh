#!/bin/bash

echo "Home directory: $HOME"
echo "Current user: $USER"
echo "Current Shell: $SHELL"
echo "Present working directory: $PWD"
echo "Hostname: $HOSTNAME"
echo "process ID of this script: $$"

HOSTNAME=$(hostname)
echo "the user currently using host is : $HOSTNAME"
readonly DOB=05/06/2001

echo "the current user DOB is : $DOB"
