#!/bin/bash

# Folder paths
archive_folder="/home/ubuntu/archive"
primesquare_folder="/home/ubuntu/prime-square"
rollback_folder="/home/ubuntu/rollback"

# Checking and creating a folder
check_and_create_folder() {
  local folder_path="$1"

  if [ ! -d "$folder_path" ]; then
    mkdir "$folder_path"
    chown ubuntu:ubuntu "$folder_path"
    echo "Created folder '$folder_path' and set ownership to 'ubuntu:ubuntu'"
  else
    echo "Folder '$folder_path' already exists"
  fi
}

# Check and create the "archive" folder
check_and_create_folder "$archive_folder"

# Check and create the "prime-square" folder
check_and_create_folder "$primesquare_folder"

# Check and create the "rollback" folder
check_and_create_folder "$rollback_folder"
