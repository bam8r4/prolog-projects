/*The author of this code is Brent Moran*/
/*Program to combine two lists*/
/*Call with combinelists({2,4,6],[1,3,5],X) and X will return [[1,2,3,4,5,6]*/


combinelists([X|Y],Z,W) :- member(X,Z), combinelists(Y,Z,W). 
combinelists([X|Y],Z,[X|W]) :- \+ member(X,Z), combinelists(Y,Z,W). 
combinelists([],Z,Z).
