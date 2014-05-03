-module(quicksort).
-export([quicksort/1]).

quicksort([]) -> [];
quicksort([E|L]) -> quicksort([ X || X <- L, X =< E]) ++ [E] ++ quicksort([ X || X <- L, X > E]).
