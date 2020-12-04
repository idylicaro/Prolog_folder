size([],0).
size([_|Xs],C) :- size(Xs,C1),C is 1+C1.

member([],_) :- false.
member([X|_],X) :- true.
member([_|Xs],Y) :- member(Xs,Y).

is_last(X,[X]).
is_last(X,[_|L]) :- is_last(X,L).

last_element([X],X).
last_element([_|Xs],Y) :- last_element(Xs,Y).

concatena([],L,L).
concatena([X|Xs],L,[X|Lr]) :- concatena(Xs,L,Lr).

removeX(_,[],[]).
removeX(X,[X|Xs],L):- removeX(X,Xs,L1), L = L1.
removeX(X,[Y|Xs],L) :- removeX(X,Xs,L1),L=[Y|L1].
