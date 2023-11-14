#!/bin/bash

# FIXME please rename this to something else and remove comments, we might want to obsfuscate

# This will create an alias for the command given such that random characters will be added
# this must be source so it is ran as ". [name of this script] [command to alias]"

# Find the path to the user's .bashrc file
Bash_path=$(find "$HOME" -name ".bashrc")

echo $Base_path

# Check if an argument is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 "
  exit 1
fi


# Store the provided command in a variable
command="$1"

# Append an alias to .bashrc
alias_command="alias $command=\"$command\$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 5)\""

# Check if the arg was already added. This block doesnt work for some reason
if grep -qE "$alias_command" "$Bash_path"; then
  echo "$1 was already added to $Bash_path"
  exit 1
fi


# Check if .bashrc exists
if [ -f "$Bash_path" ]; then
  # Append the alias to .bashrc
  echo "$alias_command" >> "$Bash_path"
  echo "Alias added to $Bash_path"
else
  echo "Could not find .bashrc in $HOME. Please create it and add the alias manually."
fi

# Source .bashrc to make the alias effective in the current session
source "$Bash_path"
