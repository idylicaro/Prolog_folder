professor(maily,linguagens).
professor(maily,prog1).
professor(andre,arquitetura).
aluno(kevenny,linguagens).
aluno(guilherme,linguagens).
aluno(joao,prog1).
aluno(jose,arquitetura).
aluno(jose,linguagens).
aluno(ana,prog1).
aluno(maria,prog1).

colega(X,Y) :- aluno(X,z),aluno(Y,z).
