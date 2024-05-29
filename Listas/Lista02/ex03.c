#include <stdio.h>

int main() {
    int n, i;
    long int termo1 = 0, termo2 = 1, nTermo;

    printf("Digite a posição do um termo desejado na sequência de Fibonacci: ");
    scanf("%d", &n);

    if (n < 0) {
        printf("A posição deve ser um número não negativo.\n");
    } else if (n == 0) {
        printf("O termo na posição 0 é 0.\n");
    } else if (n == 1) {
        printf("O termo na posição 1 é 1.\n");
    } else {
        for (i = 2; i <= n; ++i) {
            nTermo = termo1 + termo2;
            termo1 = termo2;
            termo2 = nTermo;
        }
        printf("O termo na posição %d é %ld.\n", n, nTermo);
    }
    return 0;
}