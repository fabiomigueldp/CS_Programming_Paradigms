#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int isPrimo(int num) {
    if (num <= 1) {
        return 0; 
    }
    for (int i = 2; i < num; i++) {
        if (num % i == 0) {
            return 0;
        }
    }
    return 1;
}

int main() {
    int numerosPrimosEncontrados = 0;
    int totalNumerosGerados = 0;
    int numeroSorteado;

    srand(time(0));

    while (numerosPrimosEncontrados < 25) {
        numeroSorteado = (rand() % 100) + 1;
        totalNumerosGerados++; 
        if (isPrimo(numeroSorteado)) {
            printf("Número primo encontrado: %d\n", numeroSorteado);
            numerosPrimosEncontrados++;
        }
    }
    printf("Total de números gerados: %d\n", totalNumerosGerados);
    return 0;
}
