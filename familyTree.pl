/*This author of this code is Brent Moran*/ 

/*Facts for family tree*/
male(pete).
male(mark).
male(tom). 
male(john). 
male(frank). 
male(matt). 
male(henry). 
male(todd).


female(anne). 
female(lilly). 
female(kate). 
female(alice). 
female(jenny).


parent(pete,mark). 
parent(pete,tom). 
parent(pete,anne). 
parent(mark,lilly). 
parent(mark,john). 
parent(mark,frank). 
parent(tom,kate). 
parent(anne,alice). 
parent(anne,matt). 
parent(alice,henry). 
parent(matt,jenny). 
parent(matt,todd). 
parent(alice,todd).

/*Rules for our database*/
father(X,Y) :- male(X),parent(X,Y).
mother(X,Y) :- female(X),parent(X,Y).
son(X,Y) :- male(X),parent(Y,X).
daughter(X,Y) :- female(X),parent(Y,X).
grandparent(X,Y) :- parent(X,Somebody),parent(Somebody,Y). 
sibling(X,Y) :- parent(Par,X),parent(Par,Y), X \= Y. 
brother(X,Y) :- male(X),parent(Par,X),parent(Par,Y), X \= Y. 
sister(X,Y) :- female(x),parent(Par,X),parent(Par,Y), X \= Y.
