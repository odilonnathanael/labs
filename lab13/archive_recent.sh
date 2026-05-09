#!/bin/bash
# Archive tous les fichiers d'un répertoire (1er argument) modifiés dans les 7 derniers jours
# dans une archive tar.gz nommée "recent_archive_$(date +%Y%m%d).tar.gz"

target_dir="${1:-.}"
archive_name="recent_archive_$(date +%Y%m%d).tar.gz"

if [ ! -d "$target_dir" ]; then
    echo "Erreur : $target_dir n'est pas un répertoire."
    exit 1
fi

find "$target_dir" -maxdepth 1 -type f -mtime -7 -print0 | tar -czf "$archive_name" --null -T -

echo "Archive créée : $archive_name"
ls -lh "$archive_name"
