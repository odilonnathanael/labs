#!/bin/bash
# Simulateur de sémaphore
LOCKFILE="/tmp/semaphore.lock"

# Analyse des options
privileged=0
if [ "$1" == "--privileged" ]; then
    privileged=1
    shift
fi

t1=${1:-10}
t2=${2:-3}

if [ "$t2" -ge "$t1" ]; then
    echo "Erreur : t2 ($t2) doit être inférieur à t1 ($t1)" >&2
    exit 1
fi

wait_resource() {
    while [ -f "$LOCKFILE" ]; do
        echo "$(date): Ressource occupée, attente de libération..."
        sleep 1
    done
}

use_resource() {
    echo "$(date): Ressource acquise, utilisation pendant $t2 secondes..."
    touch "$LOCKFILE"
    sleep "$t2"
    rm -f "$LOCKFILE"
    echo "$(date): Ressource libérée."
}

if [ $privileged -eq 1 ]; then
    echo "$(date): Processus privilégié démarré. Attente de $t1 secondes..."
    sleep "$t1"
    wait_resource
    use_resource
else
    wait_resource
    use_resource
fi
