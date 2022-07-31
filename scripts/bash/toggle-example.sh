#!/bin/bash

file="./toggle_status.txt"
if [ ! -f "$file" ]; then
    # Set initial status
	status="enabled"
	echo "${status}" > "$file"
	echo "Enabled for the first time!"
else
    # Get previous status
	status=$(cat "$file")
fi

# Toggle status
if [ "$status" = "enabled" ]; then
	echo "Disabling!"
	status="disabled"
else
	echo "Enabling!"
	status="enabled"
fi

# Update status persistance
echo "${status}" > "$file"
