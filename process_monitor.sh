#!/bin/bash

# Define the process name and log file
PROCESS="apache2"
LOG_FILE="/var/log/process_monitor.log"

# Check if the process is running
if pgrep "$PROCESS" > /dev/null; then
  echo "$(date): $PROCESS is running." >> "$LOG_FILE"
else
  echo "$(date): $PROCESS is not running. Starting $PROCESS..." >> "$LOG_FILE"
  # Attempt to start the process
  systemctl start "$PROCESS"
  
  # Check if the process started successfully
  if pgrep "$PROCESS" > /dev/null; then
    echo "$(date): $PROCESS started successfully." >> "$LOG_FILE"
  else
    echo "$(date): Failed to start $PROCESS." >> "$LOG_FILE"
  fi
fi
