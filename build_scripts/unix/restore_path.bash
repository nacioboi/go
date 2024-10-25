#!/bin/bash

# Get the directory where the script resides...
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# File where PATH is saved...
SAVED_PATH_FILE="$SCRIPT_DIR/saved_path.txt"

# Check if the saved path file exists...
if [[ -f "$SAVED_PATH_FILE" ]]; then
    # Read the saved path and set it as the current PATH...
    export PATH=$(cat "$SAVED_PATH_FILE")
fi


