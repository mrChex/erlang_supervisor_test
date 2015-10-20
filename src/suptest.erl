-module(suptest).

-export([start/0, stop/0]).

start() ->
    ok = application:start(suptest).

%%--------------------------------------------------------------------
%% @doc stop application
%%--------------------------------------------------------------------

stop() ->
    application:stop(suptest).