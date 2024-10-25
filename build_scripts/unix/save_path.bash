#!/bin/bash

# Ensure being ran from the correct directory...
curr_path=$(pwd)
last_bit=${curr_path##*/}

if [[ ${last_bit} != "go" ]]; then
	echo "Please run from root of project directory!"
	exit 0
fi

# Get the directory where the script resides...
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Save the current PATH to a file named 'saved_path.txt' in the same directory...
echo "$PATH" > "$SCRIPT_DIR/saved_path.txt"

