:-dynamic dish_number/2,dish_temp/2,dish_cream/2,dish_country/2,dish_dough/2.

read_str(A) :-get0(X),r_str(X, A, []).
r_str(10, A, A) :- !.
r_str(X, A, B) :-append(B, [X], B1),get0(X1),r_str(X1, A, B1).

dish_number_r(X,Y):-repeat,(dish_number(X,Y)->(nl,write(X),nl,write(Y),write("."),retract(dish_number(X,Y)));X=nil,Y=nil).
dish_temp_r(X,Y):-repeat,(dish_temp(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(dish_temp(X,Y)));X=nil,Y=nil).
dish_cream_r(X,Y):-repeat,(dish_cream(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(dish_cream(X,Y)));X=nil,Y=nil).
dish_country_r(X,Y):-repeat,(dish_country(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(dish_country(X,Y)));X=nil,Y=nil).
dish_dough_r(X,Y):-repeat,(dish_dough(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(dish_dough(X,Y)));X=nil,Y=nil).

prTell:-tell('C:/Users/dimap/OneDrive/??????? ????/Prolog/Lab11/1.txt'),dish_number_r(X1,_),X1=nil,told,
     tell('C:/Users/dimap/OneDrive/??????? ????/Prolog/Lab11/2.txt'),dish_temp_r(X2,_),X2=nil,told,
     tell('C:/Users/dimap/OneDrive/??????? ????/Prolog/Lab11/3.txt'),dish_cream_r(X3,_),X3=nil,told,
     tell('C:/Users/dimap/OneDrive/??????? ????/Prolog/Lab11/4.txt'),dish_country_r(X4,_),X4=nil,told,
     tell('C:/Users/dimap/OneDrive/??????? ????/Prolog/Lab11/5.txt'),dish_dough_r(X5,_),X5=nil,told.


prSee:-see('C:/Users/dimap/OneDrive/??????? ????/Prolog/Lab11/1.txt'), get0(Sym1), read_data(Sym1,1), seen,
     see('C:/Users/dimap/OneDrive/??????? ????/Prolog/Lab11/2.txt'), get0(Sym2), read_data(Sym2,2), seen,
     see('C:/Users/dimap/OneDrive/??????? ????/Prolog/Lab11/3.txt'), get0(Sym3), read_data(Sym3,3), seen,
     see('C:/Users/dimap/OneDrive/??????? ????/Prolog/Lab11/4.txt'), get0(Sym4), read_data(Sym4,4), seen,
     see('C:/Users/dimap/OneDrive/??????? ????/Prolog/Lab11/5.txt'), get0(Sym5), read_data(Sym5,5), seen.

read_data(-1, _) :- !.
read_data(_, Flag) :-read_str(Lang),name(X, Lang),read(Y),
            (
              Flag = 1 ->asserta(dish_number(X, Y));
            (
              Flag = 2 ->asserta(dish_temp(X, Y));
            (
              Flag = 3 ->asserta(dish_cream(X, Y));
            (
              Flag = 4 ->asserta(dish_country(X, Y));
            (
              Flag = 5 ->asserta(dish_dough(X, Y))))))),

         get0(Sym),
         read_data(Sym, Flag).

question1(X1):-write("when your dish is served?"),nl,
write("1-first"),nl,
write("2-second"),nl,
write("3-dessert"),nl,
read(X1).

question4(X4):-write("which country is this dish?"),nl,
write("0-general"),nl,
write("1-italy"),nl,
write("2-usa"),nl,
write("3-russia"),nl,
write("4-japan"),nl,
write("5-china"),nl,
write("6-turkey"),nl,
write("7-greece"),nl,
write("8-ukraine"),nl,
write("9-uzbekistan"),nl,
write("10-austria"),nl,
write("11-georgia"),nl,
read(X4).

question3(X3):-write("is there cream in your dish?"),nl,
write("1-yes"),nl,
write("2-not_always"),nl,
write("3-no"),nl,
read(X3).


question5(X5):-write("this dish contains dough?"),nl,
write("1-yes"),nl,
write("0-no"),nl,
read(X5).


question2(X2):-write("what is the temperature of this dish?"),nl,
write("1-hot"),nl,
write("2-medium"),nl,
write("3-cold"),nl,
read(X2).




quest :-prSee,question1(X1),question2(X2),question3(X3),question4(X4),question5(X5),

        (dish_number(X,X1),dish_temp(X,X2),dish_cream(X,X3),dish_country(X,X4),dish_dough(X,X5),
         write(X);
         (write("element-> "),
          read(Auto),
          asserta(dish_number(Auto, X1)),
          asserta(dish_temp(Auto, X2)),
          asserta(dish_cream(Auto, X3)),
          asserta(dish_country(Auto, X4)),
          asserta(dish_dough(Auto, X5)),
               prTell,nl,
          write("element was added!"))).
