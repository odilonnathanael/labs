#!/bin/bash
./number_check
case $? in
    1) echo "Le nombre est positif." ;;
    2) echo "Le nombre est négatif." ;;
    0) echo "Le nombre est zéro." ;;
    *) echo "Erreur inconnue." ;;
esac
