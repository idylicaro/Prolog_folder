mulher(pamela).
mulher(ana).
mulher(patricia).
homem(jim).
homem(tom).
homem(bob).

pais(pamela,bob).
pais(tom,bob).
pais(pamela,liz).
pais(tom,liz).
pais(bob,ana).
pais(bob,patricia).
pais(patricia,jim).

filho(X,Y) :- pais(Y,X).
mae(X,Y) :- pais(X,Y),mulher(X).
avo(X,Y) :- pais(X,W),pais(W,Y).
avo(X,Y) :- filho(W,X),pais(W,Y).



