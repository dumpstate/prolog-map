:- module(help_me, [
  help_me/0
]).

help_me :-
  write('Welcome to the house...'), nl,
  write('\tlook_around.\t- prints out the information about curren location.'), nl,
  write('\twest., north., east., south., up., down.\t- go to the direction.'), nl,
  write('\thelp_me.\t- prints out this message.'), nl.
