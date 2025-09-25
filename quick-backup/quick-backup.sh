#!/bin/bash

# Script to create a compressed tarball of a specified file or directory.

# --- Validation ---
# Check if an argument was provided
if [ -z "$1" ]; then
  echo "Error: No source file or directory specified."
  echo "Usage: $0 /path/to/backup"
  exit 1
fi

SOURCE_PATH=$1

# Check if the source path actually exists
if [ ! -e "$SOURCE_PATH" ]; then
  echo "Error: Source path '${SOURCE_PATH}' does not exist."
  exit 1
fi

# --- Backup Logic ---

# Get the base name of the source to use in the archive name
BASENAME=$(basename "$SOURCE_PATH")

# Create a timestamp
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

# Define the backup filename
BACKUP_NAME="${BASENAME}_${TIMESTAMP}.tar.gz"

# Create the compressed archive
# The -C option changes to the parent directory of the source, 
# which prevents the archive from containing the full absolute path.
tar -czf "$BACKUP_NAME" -C "$(dirname "$SOURCE_PATH")" "$BASENAME"

# --- Confirmation ---

# Check if the backup was created successfully
if [ -f "$BACKUP_NAME" ]; then
  echo "Backup successful!"
  echo "Archive created at: $(pwd)/${BACKUP_NAME}"
  exit 0
else
  echo "Error: Backup creation failed."
  exit 1
fi
