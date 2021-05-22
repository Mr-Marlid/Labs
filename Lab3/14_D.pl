nevzDown(X,N):-nevz1(X,0,0,N),!.
nevz1(X,X,N,N):-!.
nevz1(X,X1,n1,N):-X1 mod 2 =:= 0, X2 is X1+1, nod(X,X2,Y),
    (Y =:= 1, N2 is N1; Y =\= 1, N2 is N1+1),
       nevz1(X,X2,N2,N);
    X1 mod 2 =\= 0, X2 is X1+1,N2 is N1,nevz1(X,X2,N2,N).

nod(X,X,X) :- !.
nod(X,Y,A) :- X>Y, !, Z is X-Y, nod(Z,Y,A).
nod(X,Y,A) :- Z is Y-X, nod(X,Z,A).
