:- [ex1_pai].
:- [ex5_neto_neta].

% Predicado bisneto
bisneto(X, Y) :-
    pai(Pai, X),
    neto(Pai, Y).

% Consulta para descobrir quem é bisneto de João
consulta_bisneto_joao :-
    bisneto(Bisneto, joao),
    write(Bisneto), nl.
