#!/bin/bash

set -e

BACKUP_DIR="backups"
BACKUP_FILE="$BACKUP_DIR/backup.sql"

mkdir -p "$BACKUP_DIR"

echo "Starting MySQL database backup..."

docker exec mysql-db mysqldump -uroot -proot123 backupdb > "$BACKUP_FILE"

if [ -s "$BACKUP_FILE" ]; then
    echo "Backup completed successfully!"
    echo "Backup file: $BACKUP_FILE"
    echo "Backup size: $(du -h "$BACKUP_FILE" | cut -f1)"
else
    echo "ERROR: Backup file is empty."
    exit 1
fi