alojamiento(roma,hotel,50).
alojamiento(roma,hostal,30).
alojamiento(roma,camping,10).
alojamiento(londres,hotel,60).
alojamiento(londres,hostal,40).
alojamiento(londres,camping,20).
alojamiento(tunez,hotel,40).
alojamiento(tunez,hostal,20).
alojamiento(tunez,camping,5).

% (50 30 10 60 40 20 40 20 5)
precio_alojamiento(Precio):-
    alojamiento(_,_,Precio).

% (50 30 10 60 40 20 40 20 5)
producto_precio_a(X, Y):-
    precio_alojamiento(X),
    precio_alojamiento(Y).

seleccion_precio_a(X, Y):-
    producto_precio_a(X, Y),
    X < Y.

% (50 30 10 40 20 40 20 5)
proyeccion_minimos_precio_a(X):-
    seleccion_precio_a(X, _).


precio_maximo_a(Precio):-
    alojamiento(Precio),
    precio_alojamiento(Precio),
    \+proyeccion_minimos_precio_a(Precio).






