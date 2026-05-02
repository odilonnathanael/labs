#!/bin/bash
# Affiche tous les arguments (quel que soit leur nombre)
echo "Nombre d'arguments : $#"
echo "Liste des arguments :"
for arg in "$@"; do
    echo "  $arg"
done
