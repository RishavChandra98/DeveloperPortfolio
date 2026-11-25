#!/bin/bash

# Author: Rishav Chandra Prasad
# Script: Folder Backup Automation

if [ $# -eq 0 ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Error: Source folder does not exist."
    exit 1
fi

SOURCE=$(realpath "$1")
BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
FILENAME="backup_${TIMESTAMP}.tar.gz"

mkdir -p "$BACKUP_DIR"

if tar -czf "$BACKUP_DIR/$FILENAME" \
    -C "$(dirname "$SOURCE")" "$(basename "$SOURCE")"; then

    SIZE=$(du -h "$BACKUP_DIR/$FILENAME" | cut -f1)

    echo "Backup created successfully!"
    echo "Filename: $FILENAME"
    echo "Size: $SIZE"
    echo "Location: $BACKUP_DIR"

    echo "$TIMESTAMP - SUCCESS - $FILENAME" >> "$BACKUP_DIR/backup.log"
else
    echo "Error: Backup failed."
    echo "$TIMESTAMP - FAILED - $SOURCE" >> "$BACKUP_DIR/backup.log"
    exit 1
fi
