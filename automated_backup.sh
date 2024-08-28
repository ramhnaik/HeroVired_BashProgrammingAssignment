#!/bin/bash

# Define the source and destination directories
SOURCE_DIR="/home/user/documents"
BACKUP_DIR="/home/user/backup"
BACKUP_FILE="documents_backup.tar.gz"

# Create the backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Compress the documents directory into a tarball
tar -czf "$BACKUP_DIR/$BACKUP_FILE" -C "$SOURCE_DIR" .

# Check if the compression was successful
if [ $? -eq 0 ]; then
  echo "Backup successfully created at $BACKUP_DIR/$BACKUP_FILE."
else
  echo "Failed to create backup."
fi
