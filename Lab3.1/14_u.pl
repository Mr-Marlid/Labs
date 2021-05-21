nevzUp(X,N):-nevz1(X,X,N),!.
nevz1(_,1,0):-!.
nevz1(X,Y,N):-Y mod 2 =:= 0,Y1 is Y-1,nevz1(X,Y1,N1),
    nod(X,Y1,N2), (N2 =:= 1, N is N1 ; N2 =\= 1, N is N1+1);
    Y mod 2 =\= 0, Y1 is Y-1, nevz(X,Y1,N1), N is N1.

nod(X,X,X) :- !.
nod(X,Y,A) :- X>Y, !, Z is X-Y, nod(Z,Y,A).
nod(X,Y,A) :- Z is Y-X, nod(X,Z,A).
