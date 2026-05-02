#!/bin/bash
# Compte les fichiers d'une extension donnée dans un répertoire
ext="$1"
dir="${2:-.}"
if [ -z "$ext" ]; then
    echo "Usage: $0 <extension> [répertoire]"
    exit 1
fi
count=$(find "$dir" -maxdepth 1 -type f -name "*.$ext" | wc -l)
echo "Nombre de fichiers avec l'extension .$ext dans $dir : $count"
