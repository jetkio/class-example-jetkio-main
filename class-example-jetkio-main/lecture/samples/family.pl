% Facts
parent(john, mary).
parent(mary, susan).
parent(john, mike).
parent(mike, tom).

% Rule: X is a grandparent of Y if X is a parent of Z and Z is a parent of Y
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).