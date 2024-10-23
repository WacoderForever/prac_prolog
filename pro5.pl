parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

female(pam).
male(tom).
male(bob).
female(liz).
female(pat).
female(ann).
male(jim).

different(X,Y) :- X \= Y.
offspring(Y,X) :- parent(X,Y).
grandparent(X,Z) :- parent(X,Y),parent(Y,Z).
mother(X,Y) :- female(X),parent(X,Y).
father(X,Y) :- male(X),parent(X,Y).
sister(X,Y) :- parent(Z,X),parent(Z,Y),female(X),different(X,Y).
haschild(X) :- parent(X,Y).
happy(X) :- haschild(X).
hastwochildren(X) :- parent(X,Y),sister(Z,Y).
grandchild(Z,X) :- parent(X,Y),parent(Y,Z).
aunt(X,Y) :- parent(Z,Y),sister(X,Z).

%recursion

predecessor(X,Z) :- parent(X,Z).
predecessor(X,Z) :- parent(X,Y),predecessor(Y,Z).