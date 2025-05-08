!/bin/bash

# solution.sh
# Description:
# Extract unique IP addresses that triggered unsuccessful login attempts (HTTP 401)
# from an Apache-style access log file.

LOG_FILE="access.log"

# Check if log file exists
if [[ ! -f "$LOG_FILE" ]]; then
    echo "Error: Log file '$LOG_FILE' not found."
    exit 1
fi

echo "Unique IP addresses with HTTP 401 Unauthorized responses:"
awk '$9 == 401 { print $1 }' "$LOG_FILE" | sort | uniq
