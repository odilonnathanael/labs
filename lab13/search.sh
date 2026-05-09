#!/bin/bash
# Usage: ./search.sh -inputfile <fichier> -p <pattern> [-outputfile <fichier>] [-C] [-n]

inputfile=""
outputfile=""
pattern=""
case_sensitive=""
line_numbers=""

while getopts "i:o:p:Cn" opt; do
  case $opt in
    i) inputfile="$OPTARG" ;;
    o) outputfile="$OPTARG" ;;
    p) pattern="$OPTARG" ;;
    C) case_sensitive="-i" ;;   # -i pour ignorer la casse
    n) line_numbers="-n" ;;
    \?) echo "Option invalide: -$OPTARG" >&2; exit 1 ;;
  esac
done

if [ -z "$inputfile" ] || [ -z "$pattern" ]; then
    echo "Erreur : les options -i et -p sont obligatoires."
    exit 1
fi

if [ ! -f "$inputfile" ]; then
    echo "Erreur : le fichier $inputfile n'existe pas."
    exit 1
fi

if [ -n "$outputfile" ]; then
    grep $case_sensitive $line_numbers "$pattern" "$inputfile" > "$outputfile"
    echo "Résultat écrit dans $outputfile"
else
    grep $case_sensitive $line_numbers "$pattern" "$inputfile"
fi
