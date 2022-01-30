%%% @author Dieter Schoen <dieter@schoen.or.at>
%%% @copyright (C) 2022, Dieter Schoen
%%% @doc
%%% Definition of the macro version for pipe
%%% @end
%%% Created : 30 Jan 2022 by Dieter Schoen <dieter@schoen.or.at>

-define(PIPE(In, L), (lists:foldl(fun ({M,F,Args}, Acc) -> apply(M, F, [Acc|Args]);
                                      ({F,Args}, Acc) -> apply(F, [Acc|Args]);
                                      (F, Acc) -> apply(F, [Acc]) end, In, L))).
