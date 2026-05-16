#!/bin/bash
len=${1:-10}
count=${2:-1}
alphabet=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
for ((c=0; c<count; c++)); do
    seq=""
    for ((i=0; i<len; i++)); do
        index=$((RANDOM % 26))
        seq="${seq}${alphabet[$index]}"
    done
    echo "$seq"
done
