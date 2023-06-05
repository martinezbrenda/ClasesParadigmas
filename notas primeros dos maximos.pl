parcial1(ana,7).
parcial1(juan,4).
parcial1(fede,2).
parcial1(a,10).
parcial1(b,2).
parcial1(c,8).

parcial2(ana,9).
parcial2(juan,8).
parcial2(fede,11).
parcial2(a,10).
parcial2(b,11).
parcial2(c,9).

% a: 10, b: 8.5

nota(Nota):-
    parcial1(X, N1),
    parcial2(X, N2),
    Nota is (N1 + N2) / 2.

% Producto, seleccion, proyeccion
notas_minimas(Nota):-
    nota(Nota), nota(N2),
    Nota < N2.

nota_maxima(Nota):-
    nota(Nota), \+notas_minimas(Nota).

nota_no_max(Nota):-
    %notas_minimas(Nota).
    nota(Nota),
    \+nota_maxima(Nota).

% X, sel, proy
notas_no_max_minimas(Nota):-
    nota_no_max(Nota), nota_no_max(N2),
    Nota < N2.

nota_maxima_2da(Nota):-
    nota_no_max(Nota), \+notas_no_max_minimas(Nota).

notas_maximas(N1, N2):-
    nota_maxima(N1), nota_maxima_2da(N2).

