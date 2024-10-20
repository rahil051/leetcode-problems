#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: No folder name provided."
    echo "Usage: $0 <folder-name>"
    exit 1
fi
folder_name=$1
mkdir -p "$folder_name"
touch "$folder_name/problem.txt"
touch "$folder_name/solution.sql"
echo "dir created successfully."
