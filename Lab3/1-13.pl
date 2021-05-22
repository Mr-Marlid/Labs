max(X,Y,X):-X>Y.
max(_,Y,Y).

max(X,Y,Z,X):-X>=Y,X>=Z,!.
max(_,Y,Z,Y):-Y>=Z,!.
max(_,_,Z,Z):-!.

fact(1,1):-!.
fact(N,X):-
    N1 is N - 1,
    fact(N1,X1),
    X is X1 * N.

fact2(1,X1,X1):-!.
fact2(N,X1,X):-
    N1 is N-1,
    X2 is  X1*N,
    fact2(N1,X2,X).
factD(N,X):- fact2(N,1,X).

fib1(1,1):-!.
fib1(2,1):-!.
fib1(N,X):-
    N1 is N-1,
    N2 is N-2,
    fib1(N1,X1),
    fib1(N2,X2),
    X is X1+X2.

fibD(0,_,X,X):-!.
fibD(1,_,X,X):-!.
fibD(N,X1,X2,X):-
    X3 is X1 + X2,
    N1 is N-1,
    fibD(N1,X2,X3,X).
fib(N,X):- N1 is N - 1, fibD(N1,1,1,X).

sumU(0,0):-!.
sumU(X,S):-
    X1 is X div 10,
    sumU(X1,S1),
    S is S1+(X mod 10).

sum2(0,S,S):-!.
sum2(X,X2,S):-X1 is X div 10, X3 is X2 + (X mod 10),sum2(X1,X3,S).
sumD(X,S):-sum2(X,0,S).

prU(0,1):-!.
prU(X,P):-
    X1 is X div 10,
    prU(X1,P1),
    P is P1*(X mod 10).

pr2(0,P,P):-!.
pr2(X1,P1,P):-X2 is X1 div 10, P2 is P1 * (X1 mod 10),pr2(X2,P2,P).
prD(X,P):-pr2(X,0,P).

maxU(0,0):-!.
maxU(X,M):-
    X1 is X div 10,
    maxU(X1,M1),
    M2 is X mod 10,
    (M2 > M1, M2 mod 3 =\= 0 -> M is M2; M is M1).

max2(0,M,M):-!.
max2(X,M1,M):-
    X1 is X div 10,
    M2 is X mod 10,
    (M2 > M1, M2 mod 3 =\= 0 -> max2(X1,M2,M); max2(X1,M1,M)).
maxD(X,M):-max2(X,0,M).

nod(X,X,X) :- !.
nod(X,Y,A) :- X>Y, !, Z is X-Y, nod(Z,Y,A).
nod(X,Y,A) :- Z is Y-X, nod(X,Z,A).

prost2(X,Z1):-
    Z2 is Z1-1,
    (Z1 =\= 1 -> (X mod Z1 =\= 0 -> prost2(X,Z2);false);true).
prost(X):- Z is X-1, prost2(X,Z).

kol2(X,Z1,K):-
    Z2 is Z1-1,
    (Z1 =\= 0 ->
    (X mod Z1 =\= 0 ->K1 is K; K1 is K + 1), kol2(X,Z2,K1);
    answer(K)).
kol(X):- Z is X, kol2(X,Z,0).

posled(1,1):-!.
posled(X,N):-
    X mod 2 =:= 0, X1 is X div 2,posled(X1,N1),N is N1+1,!;
    X mod 2 =\= 0, X1 is X*3 + 1,posled(X1,N1),N is N1+1,!.

