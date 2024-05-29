#include <stdio.h>

int main() {
    int numero, somaDivisores = 0, i;

    printf("Digite um número inteiro positivo: ");
    if (scanf("%d", &numero) != 1 || numero <= 0) {
        printf("Entrada inválida. Digite um número inteiro positivo.\n");
        return 1;
    }

    for (i = 1; i < numero; i++) { 
        if (numero % i == 0) {
            somaDivisores = somaDivisores + i;
        }
    }
    if (somaDivisores == numero) {
        printf("%d é um número perfeito!\n", numero);
    } else {
        printf("%d não é um número perfeito.\n", numero);
    }
    return 0;
}
