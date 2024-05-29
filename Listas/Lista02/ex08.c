#include <stdio.h>

int multiplicar(int x, int y) {
    if (y == 0) {
        return 0;
    }
    return x + multiplicar(x, y - 1);
}

int main() {
    int num1, num2, resultado;

    printf("Digite o primeiro número: ");
    scanf("%d", &num1);

    printf("Digite o segundo número: ");
    scanf("%d", &num2);

    resultado = multiplicar(num1, num2);
    printf("O resultado da multiplicação é: %d\n", resultado);
    return 0;
}
