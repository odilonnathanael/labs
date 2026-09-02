#!/bin/bash
# Подсчитывает количество файлов с заданным расширением в каталоге
if [ $# -lt 1 ]; then
    echo "Использование: $0 <расширение> [каталог]"
    exit 1
fi
ext="$1"
dir="${2:-.}"
count=$(find "$dir" -maxdepth 1 -type f -name "*.$ext" 2>/dev/null | wc -l)
echo "Количество файлов с расширением .$ext в $dir: $count"
