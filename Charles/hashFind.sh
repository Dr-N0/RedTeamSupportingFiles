#!/bin/bash

# Please rename this and remove comments

# Check for the correct number of arguments
if [ "$#" -ne 3 ]; then
  echo "Usage: $0  "
  exit 1
fi

directory="$1"
target_hash="$2"

# Check if the directory exists
if [ ! -d "$directory" ]; then
  echo "Error: Directory '$directory' does not exist."
  exit 1
fi

# Loop through all files in the directory
for file in "$directory"/*; do
  if [ -f "$file" ]; then
    # Calculate the MD5 hash of the file
    hash=$(md5sum "$file" | awk '{print $1}')

    # Compare the calculated hash with the target hash
    if [ "$hash" == "$target_hash" ]; then
      echo "File: $file - MD5 Hash matches the target hash."
    fi
  fi
done

