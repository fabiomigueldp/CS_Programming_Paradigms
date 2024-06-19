:- [ex1_pai].

% Consulta para descobrir o pai de Ricardo
consulta_pai_ricardo :-
    pai(Pai, ricardo),
    write(Pai), nl.
