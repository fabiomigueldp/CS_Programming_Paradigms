#include <stdio.h>

int main() {
    int num1, num2, somaDivisores1 = 0, somaDivisores2 = 0;
    int i; 

    printf("Digite o primeiro inteiro positivo: ");
    if (scanf("%d", &num1) != 1 || num1 <= 0) {
        printf("Entrada inválida. Digite um número inteiro positivo.\n");
        return 1; 
    }

    printf("Digite o segundo inteiro positivo: ");
    if (scanf("%d", &num2) != 1 || num2 <= 0) {
        printf("Entrada inválida. Digite um número inteiro positivo.\n");
        return 1; 
    }

    for (i = 2; i < num1 || i < num2; i++) { 
        if (num1 % i == 0) {
            somaDivisores1 += i;
        }
        if (num2 % i == 0) {
            somaDivisores2 += i;
        }
        
    }
    if (somaDivisores1 == num2 && somaDivisores2 == num1) {
        printf("%d e %d são números amigos!\n", num1, num2);
    } else {
        printf("%d e %d não são números amigos.\n", num1, num2);
    }
    return 0;
}
