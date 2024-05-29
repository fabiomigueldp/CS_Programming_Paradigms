#include <stdio.h>

long int fatorial(int n) {
    if (n == 0) {
        return 1;
    } else {
        return n * fatorial(n - 1); 
    }
}

int main() {
    int numero;
    printf("Digite um inteiro não negativo: ");
    scanf("%d", &numero);
    if (numero < 0) {
        printf("Erro: O fatorial não admite números negativos.\n");
    } else {
        long int resultado = fatorial(numero);
        printf("O fatorial de %d é %ld\n", numero, resultado);
    }
    return 0;
}