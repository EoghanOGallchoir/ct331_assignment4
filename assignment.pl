%Definitions for isElementInList(El, List)

isElementInList(El, [El|Tail]).

isElementInList(El, [H|Tail]):-
isElementInList(El, Tail).

%Definitions for mergeLists(List1, List2, Merged)
mergeLists([], Y, Y).

mergeLists([H|[]], Y, [H|Y]).

mergeLists([H|T], Y, Conc) :-
mergeLists(T, Y, C),
mergeLists([H], C, Conc).


%Definitions for reverseList(List, ReversedList)

reverseList([],[]).

reverseList([H|T], Y):-
reverseList(T, Z),
mergeLists(Z, [H], Y).

%insertElementIntoListEnd(El, List, NewList)

insertElementIntoListEnd(El, [], [El]).

insertElementIntoListEnd(El, [H|T], [H|List]) :-
insertElementIntoListEnd(El, T, List).
