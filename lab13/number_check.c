#include <stdio.h>
#include <stdlib.h>

int main() {
    int n;
    printf("Entrez un nombre entier : ");
    scanf("%d", &n);
    if (n > 0)
        exit(1);   // code 1 pour positif
    else if (n < 0)
        exit(2);   // code 2 pour négatif
    else
        exit(0);   // code 0 pour zéro
}
