#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Usage: $0 <commande>"
    exit 1
fi
cmd="$1"
manpage="/usr/share/man/man1/${cmd}.1.gz"
if [ -f "$manpage" ]; then
    zcat "$manpage" | less
else
    echo "Aucune entrée de manuel pour $cmd"
    exit 1
fi
