%1
write_List([]):-!.
write_List([H|T]):-write(H),write(" "),write_List(T).

r_list1(N,N,L,L):-!.
r_list1(N,X,S,L):-
    X1 is X+1,
    read(Y),
    append(S,[Y],S1),
    r_list1(N,X1,S1,L).
r_list(N,L):-r_list1(N,0,[],L).

%2
s_list_d1([],S,S):-!.
s_list_d1([H|L],X,S):-
    X1 is X + H,
    s_list_d1(L,X1,S).
sum_list_down(List,Summ):-s_list_d1(List,0,Summ).

read_sum_write_list(N):-
    r_list(N,L),
    sum_list_down(L,S),
    nl,
    write("Sum = "),
    write(S),
    nl,fail.

%3
sum_list_up([],0):-!.
sum_list_up([H|List],S):-
    sum_list_up(List,S1),
    S is S1 + H.

%4.1
list_el_numb([H|_],H,0):-!.
list_el_numb([_|List],X,N):-list_el_numb(List,X,N1),N is N1+1.

%4.2
read__list_el_numb(N):-
    write("List: "),r_list(N,List),nl,
    write("Element: "),read(Elem),nl,
    write("Result: "),list_el_numb(List,Elem,X),
    write(X),nl,false.

%5?
pr_el1:-write("Введите длину списка: "),nl,
    read(N),
    write("Введите элементы списка: "),nl,
    r_list(N,List),
    write("Введите номер элемента: "),nl,
    read(Number),
    list_el_numb(List,Elem,Number),
    write(Elem),!.
pr_el:-write("Результат: ").

%6
min_list_up([H],H):-!.
min_list_up([H|T], Min):-min_list_up(T,Min1),(H<Min1 -> Min is H;Min is Min1).

%7
min_list_down([],Min,Min):-!.
min_list_down([H|T],M,Min):-(H<M -> M1 is H;M1 is M),min_list_down(T,M1,Min).
min_list_down([H|T],Min):- min_list_down(T,H,Min).

%8
prov_min:-write("Количество элементов списка: "),nl,
    read(N),
    write("Введите элементы списка: "),nl,
    read_list(N,List),
    min_list_down(List,Min),
    write("Минимальный элемент списка: "),
    write(Min),!.

%9
el_in_list(X,[X,_]):-!.
el_in_list(X,[_|T]):-el_in_list(X,T).

%10
re1([],X,X):-!.
re1([H|T],Y,X):-re1(T,[H|Y],X).
reverse(L,X):-re1(L,[],X).

%11
order([],[]):-!.
order([H1|List1],[H|List]):-p(List1,List),H1 =:= H.

%12
delete_num([_|T],0,T):-!.
delete_num([H|T],N,[H|T1]):-N1 is N-1,delete_num(T,N1,T1).

%13
del_all_num([],_,[]):-!.
del_all_num([H|T],El,[H|T1]):-H=\=El,del_all_num(T,El,T1),!.
del_all_num([_|T],El,T1):-del_all_num(T,El,T1).

%14
u_n(_,[]):-!.
u_n(X,[H|T]):- X =\= H,u_n(X,T).
unique_num([H|T]):-u_n(H,T),unique_num((T)).
unique_num([]):-!.

%15
del_rep([],[]):-!.
del_rep([H|T],[H|T1]):-del_all_num([H|T],H,New),del_rep(New,T1).

%16
counter([],_,Count,Count):-!.
counter([H|T],El,Num,Count) :-
    (H =:= El -> NewNum is Num+1;NewNum is Num),
    counter(T,El,NewNum,Count).
counter(List,El,Count):-counter(List,El,0,Count).

%17
lenght([],N,N):-!.
lenght([_|Tail],X,N):-X1 is X+1,lenght(Tail,X1,N).
lenght(List,N):-lenght(List,0,N).
