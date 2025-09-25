#!/bin/bash

# Check if a file or directory path is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <file_or_directory_path>"
  exit 1
fi

# Convert the WSL path to a Windows path
# The wslpath utility is specifically for this purpose
windows_path=$(wslpath -w "$1")

# Use explorer.exe to open the file or directory in Windows
# explorer.exe handles WSL paths correctly
explorer.exe "$windows_path"

exit 0
