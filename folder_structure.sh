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
    echo "Created folder '$folder_path'"
  else
    echo "Folder '$folder_path' already exists"
  fi
}

# Check and create the "archive" folder
check_and_create_folder "$archive_folder"

# Check and create the "prime-square" folders
check_and_create_folder "$primesquare_folder"

#Check and Create the "Roll-back" folder
check_and_create_folder "$rollback_folder"
