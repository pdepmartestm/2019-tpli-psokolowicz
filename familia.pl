persona(paula).
persona(mirta).
persona(perla).
persona(daniela).
persona(mor).
persona(abi).
persona(cecilia).
persona(mercedes).
persona(miguel).
persona(pedro).
persona(benjamin).
persona(julian).
persona(rene).
persona(iam).
persona(oren).
persona(ruben).

hijo(paula, mirta).
hijo(paula, miguel).
hijo(daniela, mirta).
hijo(daniela, miguel).
hijo(mirta, cecilia).
hijo(mirta, pedro).
hijo(miguel, lea).
hijo(miguel, ruben).
hijo(mor, perla).
hijo(iam, perla).
hijo(oren, perla).
hijo(mor, abi).
hijo(iam, abi).
hijo(oren, abi).
hijo(perla, cecilia).
hijo(perla, pedro).
hijo(julian, mercedes).
hijo(rene, mercedes).
hijo(julian, benjamin).
hijo(rene, benjamin).
hijo(mercedes, lea).
hijo(mercedes, ruben).

pareja(mirta, miguel).
pareja(lea, ruben).
pareja(cecilia, pedro).
pareja(perla, abi).
pareja(mercedes, benjamin).

hermanos(X, Y):-
    X \= Y,
    persona(X),
    persona(Y),
    hijo(X, Z),
    hijo(Y, Z).

nietoAbuelo(X, Y):-
    persona(X),
    persona(Y),
    hijo(X, Z),
    hijo(Z, Y).

sobrinoTio(X, Y):-
    persona(X),
    persona(Y),
    hijo(X, Z),
    hermanos(Y, Z).

cuniados(X, Y):-
    persona(X),
    persona(Y),
    pareja(X, Z),
    hermanos(Z, Y).

cuniados(X, Y):-
    persona(X),
    persona(Y),
    pareja(Z, X),
    hermanos(Z, Y).

cuniados(X, Y):-
    persona(X),
    persona(Y),
    pareja(Z, Y),
    hermanos(X, Z).

cuniados(X, Y):-
    persona(X),
    persona(Y),
    pareja(Y, Z),
    hermanos(X, Z).
