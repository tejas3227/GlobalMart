#!/bin/bash

LOG_DIR="./globalmart_logs"

if [ -d "$LOG_DIR" ]; then
	echo "Scanning $LOG_DIR for old logs"

	find "$LOG_DIR" -name "*.log" -type f -mtime +7 -exec rm {} \;

	echo "cleanup complete."
else
	echo "Directory not found"
	exit 1
fi
