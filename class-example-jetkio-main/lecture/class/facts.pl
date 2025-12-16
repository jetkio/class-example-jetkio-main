:- dynamic man/1.

man(socrates).
man(plato).

mortal(X):-man(X).

square(X, Y) :- Y is X * X.
male(X).
female(Y).
person(X) :- male(X) ; female(X).