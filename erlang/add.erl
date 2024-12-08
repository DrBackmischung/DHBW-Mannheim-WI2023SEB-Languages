-module(add).
-export([sum/2, main/0]).

sum(A, B) -> A + B.

main() ->
    io:format("Sum: ~p~n", [sum(5, 7)]).
