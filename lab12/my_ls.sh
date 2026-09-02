#!/bin/bash
# Выводит содержимое каталога с правами доступа
target_dir="${1:-.}"
for file in "$target_dir"/*; do
    if [ -e "$file" ]; then
        perms=""
        [ -d "$file" ] && perms="${perms}d" || perms="${perms}-"
        [ -r "$file" ] && perms="${perms}r" || perms="${perms}-"
        [ -w "$file" ] && perms="${perms}w" || perms="${perms}-"
        [ -x "$file" ] && perms="${perms}x" || perms="${perms}-"
        echo "$perms $(basename "$file")"
    fi
done
