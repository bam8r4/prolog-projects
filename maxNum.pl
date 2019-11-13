/*The author of this code is Brent Moran*/
/*Code to find the greater of two numbers*/
/*Call maxNum([2,5],X) it will return X = 5*/

maxNum(X, Y, X) :- 
    X >= Y.
maxNum(X, Y, Y) :- 
    X < Y.

maxList([X], X). 
maxList([H | T], X) :-
    maxList(T, I), 
        maxNum(H, I, X).
