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
avo(X,Y) :- filho(W,X),pais(W,Y).
irma(X,Y) :- pais(Z,X),pais(Z,Y),mulher(X),X \= Y.
temfilho(X) :- pais(X,_).
tia(X,Y):- irma(X,W),pais(W,Y).
tem2filhos(x) :- pais(X,Y),pais(X,W), Y \= W.

descendente(X,Y) :- filho(X,Y).
descendente(X,Y) :- filho(X,Z), descendente(Z,Y).


% questão 8

pais(portugal).
pais(espanha).
pais(franca).
pais(argentina).
pais(brasil).
pais(china).
pais(belgica).
pais(alemanha).
pais(chile).
continente(asia).
continente(america).
continente(europa).
local(portugal,europa).
local(espanha,europa).
local(franca,europa).
local(belgica,europa).
local(alemanha,europa).
local(argentina,america).
local(brasil,america).
local(china,asia).
local(chile,america).
fronteira(portugal,espanha).
fronteira(franca,espanha).
fronteira(franca,belgica).
fronteira(belgica,alemanha).
fronteira(alemanha,franca).
fronteira(brasil,argentina).
fronteira(chile,argentina).

vizinho(X,Y) :- fronteira(X,Y).

% proximo(X,Y) :- (fronteira(X,Z); fronteira(Z,X),
% fronteira(Y,Z);fronteira(Z,Y));vizinho(X,Y).
proximo(X,Y) :- (fronteira(X,Z), fronteira(Y,Z)) ; vizinho(X,Y).







