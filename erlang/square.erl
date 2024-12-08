-module(functions).
-export([square/1, square_of_sum/2, main/0]).

square(X) -> X * X.

square_of_sum(A, B) -> square(A + B).

main() ->
    io:format("Square of sum: ~p~n", [square_of_sum(3, 4)]).
