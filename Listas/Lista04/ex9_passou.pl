:- [ex8_nota].

% Predicado passou
passou(X) :-
    nota(X, Nota),
    Nota >= 7.

% Predicado para imprimir a tabela de resultados
imprimir_tabela_passou :-
    write('Aluno\tNota\tPassou'), nl,
    forall(aluno(X), (
        nota(X, Nota),
        (passou(X) -> Status = 'Sim' ; Status = 'Nao'),
        format('~w\t~w\t~w', [X, Nota, Status]), nl
    )).
