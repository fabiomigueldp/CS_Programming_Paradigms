:- [ex1_pai].

% Predicados neto e neta
neto(X, Y) :-
    pai(Pai, X),
    pai(Y, Pai),
    sexo(X, masculino).

neta(X, Y) :-
    pai(Pai, X),
    pai(Y, Pai),
    sexo(X, feminino).
