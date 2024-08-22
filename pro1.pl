% Define some facts
parent(john, mary).
parent(mary, susan).

% Define a rule
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
