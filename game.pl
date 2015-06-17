:- style_check(-singleton).

:- use_module(help_me).
:- use_module(describe).

start :-
  help_me.

end :-
  write('That\'s it. Type halt. to terminate.'),
  nl.
