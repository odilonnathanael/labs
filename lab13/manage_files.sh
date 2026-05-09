#!/bin/bash
usage() {
    echo "Usage: $0 -c <N>   (créer N fichiers 1.tmp ... N.tmp)"
    echo "       $0 -d       (supprimer les fichiers créés)"
}

if [ $# -lt 1 ]; then
    usage
    exit 1
fi

case "$1" in
    -c)
        if [ -z "$2" ] || [ ! "$2" -eq "$2" ] 2>/dev/null; then
            echo "Il faut donner un nombre entier positif."
            exit 1
        fi
        n=$2
        for i in $(seq 1 $n); do
            touch "$i.tmp"
            echo "Créé : $i.tmp"
        done
        ;;
    -d)
        for f in *.tmp; do
            if [ -f "$f" ]; then
                rm "$f"
                echo "Supprimé : $f"
            fi
        done
        ;;
    *)
        usage
        exit 1
        ;;
esac
