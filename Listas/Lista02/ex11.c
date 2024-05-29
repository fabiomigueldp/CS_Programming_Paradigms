#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int isPrimo(int num) {
    if (num <= 1) {
        return 0; 
    }
    for (int i = 2; i * i <= num; i++) {
        if (num % i == 0) {
            return 0;
        }
    }
    return 1;
}

int jaEncontrado(int primos[], int tamanho, int num) {
    for (int i = 0; i < tamanho; i++) {
        if (primos[i] == num) {
            return 1;
        }
    }
    return 0;
}

int main() {
    int numerosPrimosEncontrados = 0;
    int totalNumerosGerados = 0;
    int numeroSorteado;
    int primos[25];

    srand(time(0));

    while (numerosPrimosEncontrados < 25) {
        numeroSorteado = (rand() % 100) + 1;
        totalNumerosGerados++; 
        if (isPrimo(numeroSorteado) && !jaEncontrado(primos, numerosPrimosEncontrados, numeroSorteado)) {
            primos[numerosPrimosEncontrados] = numeroSorteado;
            printf("Número primo encontrado: %d\n", numeroSorteado);
            numerosPrimosEncontrados++;
        }
    }
    printf("Total de números gerados: %d\n", totalNumerosGerados);
    return 0;
}
