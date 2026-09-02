#!/bin/bash
# Скрипт делает резервную копию самого себя в ~/backup
BACKUP_DIR="$HOME/backup"
mkdir -p "$BACKUP_DIR"
cp "$0" "$BACKUP_DIR/$(basename "$0").bak"
tar -czf "$BACKUP_DIR/backup_self.tar.gz" "$0"
echo "Скрипт скопирован в $BACKUP_DIR и заархивирован в backup_self.tar.gz"
