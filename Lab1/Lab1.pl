man(slava).
man(ivan).
man(artem).
man(ilya).
man(nikita).
man(andrey).
man(alexander).
man(artur).
man(yasha).
man(elizar).
man(enisey).
man(pavel).

woman(natasha).
woman(sveta).
woman(elena).
woman(anna).
woman(polina).
woman(daria).
woman(irina).
woman(nastya).
woman(olga).
woman(sophia).
woman(varvara).
woman(maria).

parent(slava,anna).
parent(natasha,anna).

parent(slava,nikita).
parent(natasha,nikita).

parent(slava,olga).
parent(natasha,olga).

parent(slava,elizar).
parent(natasha,elizar).


parent(ilya,alexander).
parent(irina,alexander).

parent(ivan,yasha).
parent(sveta,yasha).

parent(yasha,sophia).
parent(olga,sophia).

parent(ivan,varvara).
parent(sveta,varvara).

parent(elizar,enisey).
parent(varvara,enisey).

parent(elizar,pavel).
parent(varvara,pavel).

parent(elizar,maria).
parent(varvara,maria).

parent(ivan,artem).
parent(sveta,artem).

parent(ivan,elena).
parent(sveta,elena).

parent(artem,ilya).
parent(anna,ilya).

parent(artem,polina).
parent(anna,polina).

parent(nikita,daria).
parent(elena,daria).

parent(nikita,andrey).
parent(elena,andrey).

men:-man(X),write(X),nl,fail.
women:-woman(X),write(X),nl,fail.

children(X):-parent(X,Y),write(Y),nl,fail.

mother(X,Y):-parent(X,Y),woman(X),write(yes),nl,fail.
mother(X):-parent(Y,X),woman(Y),write(Y),nl,fail.

father(X,Y):-parent(X,Y),man(X),write(yes),nl,fail.
father(X):-parent(Y,X),man(Y),write(Y),nl,fail.

brother(X,Y):-parent(Z,X),parent(Z,Y),man(X),man(Z),write(yes),nl,fail.
brother(X):-parent(Z,X),parent(Z,Y),man(Y),man(Z),write(Y),nl,fail.

wife(X,Y):-woman(X),parent(X,Z),parent(Y,Z),write(yes),nl,!,fail.
wife(X):-man(X),parent(X,Z),parent(Y,Z),woman(Y),write(Y),nl,!,fail.


grand_da(X,Y):-woman(X),parent(Y,Z),parent(Z,X),write(yes),nl,fail.
grand_dats(X):-parent(X,Z),parent(Z,Y),woman(Y),write(Y),nl,fail.

grand_ma_and_son(X,Y):-parent(X,Z),parent(Z,Y),woman(X),man(Y),write(yes),nl,fail;parent(Y,Z),parent(Z,X),woman(Y),man(X),write(yes),nl,fail.

b_s(X,Y):-parent(Z,X),parent(Z,Y),man(Z),write(yes),nl,fail.
b_s(X):-parent(Z,X),parent(Z,Y),man(Z),write(Y),nl,fail.

grand_pa_and_son(X,Y):-parent(X,Z),parent(Z,Y),man(X),man(Y),write(yes),nl,fail;parent(Y,Z),parent(Z,X),man(Y),man(X),write(yes),nl,fail.

uncle(X,Y):-parent(Z,Y),brother(X,Z),write(yes),nl,fail.
uncle(X):-parent(Z,X),brother(Y,Z),write(Y),nl,fail.



grand_pa(X,Y):-parent(X,Z),parent(Z,Y),man(X),write(yes),nl,!,fail.
grand_pas(X):-parent(Z,X),parent(Y,Z),man(Y),write(Y),nl,fail.

plem(X,Y):-parent(Z,X),parent(D,Z),parent(D,Y),man(X),write(yes),nl,!,fail.
plem(X):-parent(Z,Y),parent(D,Z),parent(D,X),man(Y),man(D),write(Y),nl,fail.
