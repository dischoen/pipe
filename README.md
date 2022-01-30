pipe
=====

An attempt to implement the elixir pipe in Erlang

I wrote a macro and a function.
Basically, the pipe is a list of functions. It will be chained together with
foldl, where a function is used which prepends the result of the previous
action to the parameters of the current function.
If a function has more than one parameter, it has to be written as tuple, either
{F, A} or {M, F, A}.

Examples
--------

    PipeRes = ?PIPE(42, [
                  fun add/1, 
                  {fun dbl/1,    []},
                  {fun offset/2, [100]},
                  {other, otherfunc, [1]}
                 ]).

    PipeRes = pipe:pipe(42, [
                    fun add/1, 
                    {fun dbl/1,    []},
                    {fun offset/2, [100]},
                    {other, otherfunc, [1]}
                   ]).


Build
-----

    $ rebar3 compile

Test
----
    
    $ rebar3 eunit
    
