#!/bin/bash

# Set variables
SOURCE_DIR="$HOME/test"
BACKUP_DIR="$HOME/backup_$(date +%F_%T)"
LOG_FILE="$HOME/backup_log.log"

# Create backup directory
mkdir -p "$BACKUP_DIR"

# Copy .txt files
cp "$SOURCE_DIR"/*.log "$BACKUP_DIR" 2>/dev/null

# Log the action
echo "Backup done on $(date)" >> "$LOG_FILE"
echo "Files copied from $SOURCE_DIR to $BACKUP_DIR" >> "$LOG_FILE"

# Confirm to user
echo "Backup completed. Files are in $BACKUP_DIR"

