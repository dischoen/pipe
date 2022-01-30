-module(pipe).

-export([pipe/2]).


pipe(In, List) ->
    lists:foldl(fun myapply/2, In, List).
    

myapply ({M,F,Args}, Acc) -> 
    apply(M, F, [Acc|Args]);
myapply({F,Args}, Acc) -> 
    apply(F, [Acc|Args]);
myapply(F, Acc) -> 
    apply(F, [Acc]).



