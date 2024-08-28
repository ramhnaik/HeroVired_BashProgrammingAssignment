#!/bin/bash

# Set the threshold for disk usage
THRESHOLD=80

# Get the current disk usage of the root filesystem (as a percentage)
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

# Define the email address of the system administrator
ADMIN_EMAIL="ramhnaik@gmail.com"

# Check if the disk usage is above the threshold
if [ "$USAGE" -gt "$THRESHOLD" ]; then
  # Send an email alert
  SUBJECT="Alert: Root Filesystem Disk Usage is above $THRESHOLD%"
  MESSAGE="Disk usage on the root filesystem is currently at ${USAGE}%."
  echo "$MESSAGE" | mail -s "$SUBJECT" "$ADMIN_EMAIL"
  echo "Alert sent to $ADMIN_EMAIL: Disk usage is at ${USAGE}%."
else
  echo "Disk usage is under control at ${USAGE}%."
fi
