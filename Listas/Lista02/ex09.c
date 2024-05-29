#include <stdio.h>

int contarDigitos(int numero) {

    if (numero == 0) {
        return 1;
    }

    if (numero < 0) {
        printf("Erro: O número deve ser positivo.\n");
        return -1; 
    }

    return 1 + contarDigitos(numero / 10);
}

int main() {
    int numero;

    printf("Digite um número inteiro positivo: ");
    if (scanf("%d", &numero) != 1) {
        printf("Erro: Entrada inválida.\n");
        return 1; 
    }

    int quantidadeDigitos = contarDigitos(numero);

    if (quantidadeDigitos == -1) {
        return 1; 
    }
    printf("O número %d tem %d dígitos.\n", numero, quantidadeDigitos);
    return 0; 
}
