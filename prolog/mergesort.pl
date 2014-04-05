
merge([], [], []).
merge([], [E|L], [E|L]).
merge([E|L], [], [E|L]).
merge([E1|L1], [E2|L2], [E3|L3]) :- E1 >= E2, E2 = E3, merge([E1|L1], L2, L3).
merge([E1|L1], [E2|L2], [E3|L3]) :- E2 >= E1, E1 = E3, merge(L1, [E2|L2], L3).

splitInHalf([], [], []).
splitInHalf(L, L1, L2) :- append(L1, L2, L), length(L1, X1), length(L2, X2), X1 =:= X2.
splitInHalf(L, L1, L2) :- append(L1, L2, L), length(L1, X1), length(L2, X2), X1 =:= X2-1.

mergesort([], []).
mergesort([E], [E]).
mergesort(L, L1) :- splitInHalf(L, Li1, Li2),
		       mergesort(Li1, Lit1), mergesort(Li2, Lit2),
		       merge(Lit1, Lit2, L1).

