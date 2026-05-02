#!/bin/bash
# Affiche le contenu d'un répertoire avec les droits
dir="${1:-.}"
for file in "$dir"/*; do
    if [ -e "$file" ]; then
        perms=""
        [ -d "$file" ] && perms="${perms}d" || perms="${perms}-"
        [ -r "$file" ] && perms="${perms}r" || perms="${perms}-"
        [ -w "$file" ] && perms="${perms}w" || perms="${perms}-"
        [ -x "$file" ] && perms="${perms}x" || perms="${perms}-"
        echo "$perms $(basename "$file")"
    fi
done
