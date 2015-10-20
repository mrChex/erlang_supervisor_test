-module(suptest_srv).
-behaviour(gen_server).
-export([start_link/0]).
-export([init/1, handle_call/3, handle_cast/2, handle_info/2, terminate/2, code_change/3]).

-record(state, {i}).
 
start_link() ->
    gen_server:start_link(?MODULE, [], []).
    
init([]) ->
    io:format("Init suptest_srv~n"),
    {ok, #state{i=0}}.


handle_call(Msg, _From, State) ->
    io:format("handle_call: ~p~n", [Msg]),
    {reply, ok, State}.
 

handle_cast(Msg, State) ->
    io:format("handle cast: ~p~n", [Msg]),
    {noreply, State}.
 
handle_info(Msg, S) ->
    io:format("handle info: ~p~n", [Msg]),
    {stop, normal, S}.
 
terminate(_Reason, _State) ->
    io:format("terminated"),
    ok.
 
code_change(_OldVsn, State, _Extra) ->
    {ok, State}.