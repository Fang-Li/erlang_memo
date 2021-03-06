%% ===================================================================
%% Author Kevin Xiao
%% 2015-6-17
%% 
%% ===================================================================
-module(t_gen_msg).

-behaviour(gen_msg).

% APIs
-export([start_link/0]).

%% gen_msg callbacks
-export([
         init/1, 
         handle_msg/2,
         terminate/2
        ]).



%% ===================================================================
%% APIs
%% ===================================================================

start_link() ->
    gen_msg:start_link({local, ?MODULE}, ?MODULE, [], []).



%% ===================================================================
%% gen_msg callbacks
%% ===================================================================

init([]) -> {ok, []}.
handle_msg(_Msg, State) -> {ok, State}.
terminate(_Reason, _State) -> ok.



%% ===================================================================
%% Internal functions
%% ===================================================================
