-module(cases).
-compile([export_all]).

prepend(X, []) ->
	[X];
prepend(X, Set) ->
	case lists:member(X, Set) of
		true -> Set;
		false -> [X|Set]
	end.

