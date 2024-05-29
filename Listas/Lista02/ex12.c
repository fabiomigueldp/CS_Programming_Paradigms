#include <stdio.h>
#include <string.h>
#include <ctype.h>

// Função para remover caracteres não numéricos
void removerCaracteresNaoNumericos(char *cpfOriginal) {
    char cpfLimpo[12] = "";
    int indiceParaInserir = 0;
    for (int indiceOriginal = 0; cpfOriginal[indiceOriginal] != '\0'; indiceOriginal++) {
        if (isdigit(cpfOriginal[indiceOriginal])) {
            cpfLimpo[indiceParaInserir] = cpfOriginal[indiceOriginal];
            indiceParaInserir++;
        }
    }
    cpfLimpo[indiceParaInserir] = '\0';
    strcpy(cpfOriginal, cpfLimpo);
}

// Função para verificar se todos os dígitos são iguais
int todosOsDigitosSaoIguais(char *cpfVerificado) {
    for (int indiceParaComparar = 1; indiceParaComparar < 11; indiceParaComparar++) {
        if (cpfVerificado[indiceParaComparar] != cpfVerificado[0]) {
            return 0; 
        }
    }
    return 1; 
}

// Função para calcular os dígitos verificadores
int calcularDigitoVerificador(char *cpfParcial, int comprimento) {
    int somaDosPesos = 0;
    int pesoAtual = comprimento + 1;
    for (int indiceParaSomar = 0; indiceParaSomar < comprimento; indiceParaSomar++) {
        somaDosPesos += (cpfParcial[indiceParaSomar] - '0') * pesoAtual;
        pesoAtual--;
    }
    int restoDaDivisao = somaDosPesos % 11;
    if (restoDaDivisao < 2) {
        return 0;
    } else {
        return 11 - restoDaDivisao;
    }
}

// Função principal de validação de CPF
int validarCPF(char *cpfParaValidar) {
    removerCaracteresNaoNumericos(cpfParaValidar);
    if (strlen(cpfParaValidar) != 11) {
        return 0; 
    }
    
    if (todosOsDigitosSaoIguais(cpfParaValidar)) {
        return 0; 
    }
    
    int primeiroDigitoVerificadorCalculado = calcularDigitoVerificador(cpfParaValidar, 9);
    if (primeiroDigitoVerificadorCalculado != (cpfParaValidar[9] - '0')) {
        return 0; 
    }
    
    int segundoDigitoVerificadorCalculado = calcularDigitoVerificador(cpfParaValidar, 10);
    if (segundoDigitoVerificadorCalculado != (cpfParaValidar[10] - '0')) {
        return 0; 
    }
    
    return 1; 
}

int main() {
    char cpfEntradaUsuario[20];
    
    printf("Digite o CPF (apenas números): ");
    scanf("%19s", cpfEntradaUsuario);
    
    if (validarCPF(cpfEntradaUsuario)) {
        printf("CPF válido\n");
    } else {
        printf("CPF inválido\n");
    }
    
    return 0;
}
