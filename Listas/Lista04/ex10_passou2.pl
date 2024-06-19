:- [ex8_nota].

% Relação frequencia
frequencia(joao, 80).
frequencia(maria, 70).
frequencia(pedro, 15).
frequencia(ana, 75).

% Paredicado passou2
passou2(X) :-
    nota(X, Nota),
    frequencia(X, Frequencia),
    Nota >= 7,
    Frequencia >= 75.

% Predicado para imprimir a tabela de resultados considerando frequência
imprimir_tabela_passou2 :-
    write('Aluno\tNota\tFrequencia\tPassou'), nl,
    forall(aluno(X), (
        nota(X, Nota),
        frequencia(X, Frequencia),
        (passou2(X) -> Status = 'Sim' ; Status = 'Nao'),
        format('~w\t~w\t~w\t~w', [X, Nota, Frequencia, Status]), nl
    )).