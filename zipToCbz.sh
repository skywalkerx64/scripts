#!/bin/bash

# Script to rename all .zip files to .cbz files in the current directory

# Loop through all .zip files
for file in *.zip; do
  # Check if any .zip files exist
  if [ -e "$file" ]; then
    # Remove .zip extension and add .cbz extension
    mv -- "$file" "${file%.zip}.cbz"
    echo "Renamed: $file -> ${file%.zip}.cbz"
  else
    echo "No .zip files found."
    break
  fi
done
