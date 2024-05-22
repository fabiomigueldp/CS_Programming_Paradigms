def contagem_regressiva(n):
    if n > 0:
        print(n)
        contagem_regressiva(n - 1)
    else:
        print("BOOM!")

n = int(input("Digite um número: "))
contagem_regressiva(n)
