#!/bin/bash

SOURCE_DIR="../configs"
BACKUP_DIR="../backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/configs_$TIMESTAMP.tar.gz"

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "[OK] Backup created successfully:"
    echo "$BACKUP_FILE"
else
    echo "[ERROR] Backup failed."
    exit 1
fi
#!/bin/bash
