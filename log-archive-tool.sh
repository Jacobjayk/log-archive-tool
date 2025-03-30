#!/bin/bash

###########################
# Author: Jacob Akotuah
#
# This script archives logs from a given directory
#
# Version: v1.0
###########################

# Function to print a header
print_header() {
  echo -e "\n=============================="
  echo -e "$1"
  echo -e "=============================="
}

# Check if log directory argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <log-directory>"
  exit 1
fi

LOG_DIR="$1"
ARCHIVE_DIR="/var/log/archives"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"

# Create archive directory if it doesn't exist
mkdir -p "$ARCHIVE_DIR"

# Archive logs
print_header "Archiving Logs"
tar -czf "$ARCHIVE_DIR/$ARCHIVE_NAME" "$LOG_DIR" &> /dev/null

if [ $? -eq 0 ]; then
  echo "Archive created: $ARCHIVE_DIR/$ARCHIVE_NAME"
  echo "$TIMESTAMP: Archive created - $ARCHIVE_NAME" >> "$ARCHIVE_DIR/archive.log"
else
  echo "Failed to create archive."
  exit 1
fi
