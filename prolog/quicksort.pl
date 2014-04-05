
smaller(E, [E1], []) :- E < E1.
smaller(E, [E1], [E1]) :- E >= E1.
smaller(E, [E1|L1], [E2|L2]) :- E >= E1, E2 is E1, smaller(E, L1, L2). 
smaller(E, [E1|L1], L2) :- E < E1, smaller(E, L1, L2).

bigger(E, [E1], []) :- E >= E1.
bigger(E, [E1], [E1]) :- E < E1.
bigger(E, [E1|L1], [E2|L2]) :- E < E1, E2 is E1, bigger(E, L1, L2). 
bigger(E, [E1|L1], L2) :- E >= E1, bigger(E, L1, L2).

quicksort([], []).
quicksort([E], [E]).
quicksort([E1|L1], L2) :- smaller(E1, L1, Lts), bigger(E1, L1, Ltb),
			  quicksort(Lts, Ltss), quicksort(Ltb, Ltbs),
			  append(Ltss, [E1], Ltl), append(Ltl, Ltbs, L2).
