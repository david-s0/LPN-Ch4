%4.2
tran(eins,one).
tran(zwei,two).
tran(drei,three).
tran(vier,four).
tran(fuenf,five).
tran(sechs,six).
tran(sieben,seven).
tran(acht,eight).
tran(neun,nine).

listtran([], []).
listtran([H1|G], [H2|E]) :-
	tran(H1, H2),
	listtran(G, E).

%4.3
twice([], []).
twice([H|In], [H, H|Twice]) :-
	twice(In, Twice).

%Practical 1
combine1([], [], []).
combine1([H1|L1], [H2|L2], [H1, H2|L3]) :-
	combine2(L1, L2, L3).

%Practical 2
combine2([H1|[]], [H2|[]], [[H1, H2|[]]]).
combine2([H1|L1], [H2|L2], [[H1, H2]|L3]) :-
	combine2(L1, L2, L3).

%Practical 3
combine3([], [], []).
combine3([H1|L1], [H2|L2], [join(H1, H2)|L3]) :-
	combine3(L1, L2, L3).

%Practical 4
mysubset([], Set).
mysubset([H1|Sub], Set) :-
	member(H1, Set),
	mysubset(Sub, Set).

%Practical 5
mysuperset(Sup, []).
mysuperset(Sup, [H1|Set]) :-
	member(H1, Sup),
	mysuperset(Sup, Set).