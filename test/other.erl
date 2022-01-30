-module(other).

-export([otherfunc/2]).

otherfunc(A,B) ->
    io:format("in other, A ~p B ~p~n", [A,B]),
    A + B.
