:- [ex3_irmao_irma].

% Consulta para descobrir a irmã de Bruno
consulta_irma_bruno :-
    ( irma(Irma, bruno) ->
        write(Irma), nl
    ; 
        write('Bruno não tem uma irmã.'), nl
    ).