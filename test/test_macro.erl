-module(test_macro).
-include_lib("eunit/include/eunit.hrl").

-include_lib("pipe.hrl").



add(I) ->
    I + 1.

dbl(I) ->
    I * 2.

offset(I, Off) ->
    io:format("in ~p offset ~p~n", [I, Off]),
    I + Off.



macro_test() ->
    PipeRes = ?PIPE(42, [
                                 fun add/1, 
                                 {fun dbl/1,    []},
                                 {fun offset/2, [100]},
                                 {other, otherfunc, [1]}
                                ]),
    ?assertEqual(PipeRes, 187),
    ok.
