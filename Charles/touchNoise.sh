#!/bin/bash

if [$# -ne 1]; then
	echo "Needs path"
exit 1
fi

directory = "$1"

if [! -d "$directory"]; then
echo "Directory: $directory not found."
exit 1
fi

find "$directory" -type f -exec touch {} \;
