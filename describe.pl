:- module(describe, [
  describe/1
]).

describe(red_room) :-
  write('You are in the Red room.'), nl,
  write('\teast\t- lower corridor'), nl,
  write('\tnorth\t- blue room'), nl.

describe(green_room) :-
  write('You are in the Green room.'), nl,
  write('\twest\t- lower corridor'), nl,
  write('\tnorth\t- blue room'), nl.

describe(blue_room) :-
  write('You are in the Blue room.'), nl,
  write('\tsouth\t- lower corridor'), nl,
  write('\twest\t- red room'), nl,
  write('\teast\t- green room'), nl.

describe(cyan_room) :-
  write('You are in the Cyan room.'), nl,
  write('\teast\t- upper corridor'), nl,
  write('\tnorth\t- magenta room'), nl.

describe(yellow_room) :-
  write('You are in the Yellow room.'), nl,
  write('\twest\t- upper corridor'), nl,
  write('\tnorth\t- magenta room'), nl.

describe(magenta_room) :-
  write('You are in the Magenta room.'), nl,
  write('\tsouth\t- upper corridor'), nl,
  write('\twest\t- cyan room'), nl,
  write('\teast\t- yellow room'), nl.

describe(lower_corridor) :-
  write('You are in the corridor at the ground floor.'), nl,
  write('\twest\t- red room'), nl,
  write('\tnorth\t- blue room'), nl,
  write('\teast\t- green room'), nl,
  write('\tup\t- upper corridor'), nl.

describe(upper_corridor) :-
  write('You are in the corridor at the second floor.'), nl,
  write('\twest\t- cyan room'), nl,
  write('\tnorth\t- magenta room'), nl,
  write('\teast\t- yellow room'), nl,
  write('\tdown\t- lower corridor'), nl.
