female(rekha).
female(lekha).
female(rumi).
female(sumi).

male(karim).
male(rahim).
male(hashim).
male(kashim).

parent_of(karim,sumi).
parent_of(hashim,karim).
parent_of(rekha,sumi).
parent_of(lekha,rekha).
parent_of(rekha,rumi).
parent_of(karim,kashim).
parent_of(lekha,rahim).

grandparent_of(X,Y) :- parent_of(X,Z), parent_of(Z,Y).
greatgrandparent_of(X,Y) :- parent_of(X,Z), parent_of(Z,A), parent_of(A,Y).
greatgreatgrandparent_of(X,Y) :- parent_of(X,Z), parent_of(Z,A),parent_of(A,B),
parent_of(B,Y).
ancestor_of(X,Y) :- parent_of(X,Y).
ancestor_of(X,Y) :- parent_of(X,Z), ancestor_of(Z,Y).

% function for factorial number
% fact
factorial(1,1).
% rules 
factorial(N,Result):-N>1,N1 is N-1,factorial(N1,Result1),Result is Result1*N.


% 1 to n number count summation 

count(1,1).
count(N,Val):- N > 1,N1 is N-1,count(N1,Val1),Val is Val1+N.


% find Even Numbers sum
even_sum(2,2).
even_sum(N,Val):-N > 2,N1 is N-2,even_sum(N1,Val1),Val is Val1+N.

%find avg
average(N, Avg) :- 
  findall(I, between(1, N, I), Is),
  averagelist(Is, Avg).

% find avg of first n positive odd integer
odd_sum(1,1).
odd_sum(N,Val):-N>1,N1 is N-2,odd_sum(N1,Val1),Val is Val1 + N.

% febonacci number 
febonacci(1,0).
febonacci(2,1).
febonacci(N,Res):- N > 2,N1 is N-1,N2 is N-2,febonacci(N1,Res1),febonacci(N2,Res2),Res is Res1+Res2.


