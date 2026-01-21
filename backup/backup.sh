#!/bin/bash
# prostoy script backupa
BACKUP_DIR="$HOME/backups"
SOURCE_DIR="$1"
DATE=$(date +%Y%m%d_%H%M%S)
if [ -z "$SOURCE_DIR" ]; THEN
echo "Usage: $0 <directory_to_backup>"
exit 1
fi
mkdir -p $BACKUP_DIR
tar -czf $BACKUP_DIR/backup_$DATE.tar.gz $SOURCE_DIR
echo "Backup created: $BACKUP_DIR/backup_$DATE.tar.tg"
echo "Size: $(du -h $BACKUP_DIR/backup_$DATE.tar.gz | cut -f1)"
