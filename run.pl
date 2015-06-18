:- dynamic i_am_in/1.

:- use_module(help_me).
:- use_module(describe).
:- use_module(actions).
:- use_module(directions).

start :-
  help_me, nl,
  look_around.

end :-
  write('That\'s it. Type halt. to terminate.'),
  nl.

% Initial state
i_am_in(lower_corridor).
