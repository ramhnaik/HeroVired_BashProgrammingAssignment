#!/bin/bash

# Check if a file argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 filename"
  exit 1
fi

# Assign the first argument to FILE variable
FILE="$1"

# Check if the file exists
if [ ! -f "$FILE" ]; then
  echo "The file $FILE does not exist."
  exit 1
fi

# Count the number of lines
LINES=$(wc -l < "$FILE")

# Count the number of words
WORDS=$(wc -w < "$FILE")

# Count the number of characters
CHARS=$(wc -m < "$FILE")

# Display the counts
echo "File: $FILE"
echo "Lines: $LINES"
echo "Words: $WORDS"
echo "Characters: $CHARS"
