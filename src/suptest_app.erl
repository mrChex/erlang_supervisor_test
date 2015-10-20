-module(suptest_app).

-behaviour(application).

%% Application callbacks
-export([start/0, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================



start() ->
    suptest_sup:start_link().

stop(_State) ->
    ok.
