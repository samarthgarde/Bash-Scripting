#!/bin/bash

echo "Disk Usage:"
df -h

echo "Memory Usage:"
free -h

echo "Running Services:"
systemctl list-units --type=service --state=running

