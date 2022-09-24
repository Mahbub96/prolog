name(mahbub).
name(mishuk).
name(we).

man(adam).
girl(jerry).

like(blue).
like(adam,pizza).
like(mishuk,pott).

eat(we,pott).

/* second practice */

parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(pat,jim).
parent(tom,kim).
parent(bob,pat).

/* third practice */
fatherOf(joe,paul).
fatherOf(joe,mary).

/* 
fatherOf(jane,paul).
fatherOf(jane,mary).
*/

motherOf(jane,paul).
motherOf(jane,mary).

male(paul).
male(joe).

female(mary).
female(jane).

% practice no 4

% knowledge 

father(shohidul,satcho).
father(jamal,shohidul).
father(rahman,jamal).
father(someone,rahman).

% rules
grandfather(X,Y):-father(X,Z),father(Z,Y).


% practice no 5 (nested Structure)

has(joe,car(ford,3,5000)).
has(joe,car(opel,2,6000)).
has(mick,car(toyota,5,1000)).
has(mike,car(ford,2,2000)).

% practice no 6 (nested Structure 2)

likes(mahbub,
    movie(thriler,
        actor(proshonjit,sharukh_khan))).


% practice no 7 (oparator) 

go:-write('Enter any Number'),read(Num1),nl,write("Enter any number "),read(Num2),nl,mul(Num1,Num2).

mul(Num1,Num2):-
    Result is Num1*Num2,write(Result).
