#!/bin/bash
# Script de sauvegarde de lui-même
BACKUP_DIR=~/backup
mkdir -p "$BACKUP_DIR"
cp "$0" "$BACKUP_DIR/$(basename "$0").bak"
tar -czf "$BACKUP_DIR/backup_self.tar.gz" "$0"
echo "Sauvegarde effectuée dans $BACKUP_DIR"
