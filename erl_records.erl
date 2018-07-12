-module(erl_records).

-export([new/0,
         parse/1]).

-record(test, {
          version = 1,
          f1 = 0,
          f2 = f2_atom,
          f3 = {foo, bar, baz},
          f4 = "yo mama"
         }).

new() ->
    #test{}.

parse(#test{version = 1, f1 = F1, f2 = F2, f3 = F3}) ->
    [{f1, F1}, {f2, F2}, {f3, F3}].
