% facts

parent( pam, bob).
% Pam is a parent of Bob
parent( tom, bob).
parent( tom, liz).
parent( bob, ann).
parent( bob, pat).
parent( pat, jim).


female(pam). % Pam is female
female(liz).
female(ann).
female(pat).
male(tom). % Tom is male
male(bob).
male(jim).


% Rules
mother(X,Y):-parent(X,Y),female(X).
grandchild(X,Y):-parent(X,Z),parent(Z,Y).
grandparent( X, Z):-parent( X, Y), parent( Y, Z).
sister(X,Y):-parent(Z,X),parent(Z,Y),female(X).

factorial(0, 1).
factorial(N, M) :- N > 0, Prev is N -1, factorial(Prev, M1), M is M1 * N.