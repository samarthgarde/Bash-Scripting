#!/bin/bash

LOG_FILE="/var/log/syslog"

while true; do
  tail -n 1 "$LOG_FILE"
  sleep 5
done

