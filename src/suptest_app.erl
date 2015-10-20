-module(suptest_app).

-behaviour(application).

%% Application callbacks
-export([start/2, manual_start/0, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================



start(_StartType, _StartArgs) ->
    suptest_sup:start_link().

manual_start() ->
    {ok, Pid} = suptest_srv:start_link(),
    register(suptest_srv, Pid),
    {ok, Pid}.

stop(_State) ->
    ok.
