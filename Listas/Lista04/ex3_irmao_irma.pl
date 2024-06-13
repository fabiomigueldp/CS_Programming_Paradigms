:- [ex1_pai].

% Sexo dos membros da família
sexo(maria, feminino).
sexo(pedro, masculino).
sexo(marcos, masculino).
sexo(joana, feminino).
sexo(ricardo, masculino).
sexo(bruno, masculino).
sexo(victor, masculino).

% Predicados irmao e irma
irmao(X, Y) :-
    pai(Pai, X),
    pai(Pai, Y),
    X \= Y,
    sexo(X, masculino).

irma(X, Y) :-
    pai(Pai, X),
    pai(Pai, Y),
    X \= Y,
    sexo(X, feminino).
