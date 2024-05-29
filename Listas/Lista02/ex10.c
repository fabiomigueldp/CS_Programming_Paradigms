#include <stdio.h>

int pertence(int array[], int tamanho, int elemento) {
    for (int i = 0; i < tamanho; i++) {
        if (array[i] == elemento) {
            return 1; 
        }
    }
    return 0; 
}

int main() {
    int array[] = {42, 45, 47};
    int tamanho = sizeof(array) / sizeof(array[0]);

    int elemento = 3;

    if (pertence(array, tamanho, elemento)) {
        printf("O elemento %d pertence ao array.\n", elemento);
    } else {
        printf("O elemento %d não pertence ao array.\n", elemento);
    }

    return 0;
}
