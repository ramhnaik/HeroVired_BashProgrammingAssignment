#!/bin/bash

# Check if a file argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 filename"
  exit 1
fi

# Assign the first argument to FILE variable
FILE="$1"

# Check if the file exists
if [ ! -e "$FILE" ]; then
  echo "The file $FILE does not exist."
  exit 1
fi

# Check for read permission
if [ -r "$FILE" ]; then
  echo "The file $FILE has read permission."
else
  echo "The file $FILE does NOT have read permission."
fi

# Check for write permission
if [ -w "$FILE" ]; then
  echo "The file $FILE has write permission."
else
  echo "The file $FILE does NOT have write permission."
fi

# Check for execute permission
if [ -x "$FILE" ]; then
  echo "The file $FILE has execute permission."
else
  echo "The file $FILE does NOT have execute permission."
fi
