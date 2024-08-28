#!/bin/bash

# To  check use has provided required argument
if [ -z "$1" ]; then
  echo "Usage: $0 path_of_directory"
  exit 1
fi

# Define the source directory
SOURCE_DIR="$1"

# Check if the provided directory exists
if [ ! -d "$SOURCE_DIR" ]; then
  echo "The directory $SOURCE_DIR does not exist."
  exit 1
fi

# Define the backup directory with timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_DIR="$SOURCE_DIR/backup_$TIMESTAMP"

# Create the backup directory
mkdir -p "$BACKUP_DIR"

# Copy all .txt files to the backup directory
cp "$SOURCE_DIR"/*.txt "$BACKUP_DIR" 2>/dev/null
