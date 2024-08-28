#!/bin/bash

# Define the report file
REPORT_FILE="system_report.txt"

# Get the system uptime
echo "System Uptime:" > "$REPORT_FILE"
uptime >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Get memory usage
echo "Memory Usage:" >> "$REPORT_FILE"
free -h >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Get CPU load
echo "CPU Load:" >> "$REPORT_FILE"
top -b -n1 | grep "load average:" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Get disk usage
echo "Disk Usage:" >> "$REPORT_FILE"
df -h >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Get running processes
echo "Running Processes:" >> "$REPORT_FILE"
ps aux --sort=-%mem | head -n 10 >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Confirm the report generation
echo "System information report saved to $REPORT_FILE."
