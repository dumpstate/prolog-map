:- module(describe, [
  describe/1
]).

describe(red_room) :-
  write('You are in the Red room (red_room).'), nl,
  write('\teast - lower_corridor'), nl.

describe(green_room) :-
  write('You are in the Green room (green_room).'), nl,
  write('\twest - lower_corridor'), nl.

describe(blue_room) :-
  write('You are in the Blue room (blue_room).'), nl,
  write('\tsouth - lower_corridor'), nl.

describe(cyan_room) :-
  write('You are in the Cyan room (cyan_room).'), nl,
  write('\teast - upper_corridor'), nl.

describe(yellow_room) :-
  write('You are in the Yellow room (yellow_room).'), nl,
  write('\twest - upper_corridor'), nl.

describe(magenta_room) :-
  write('You are in the Magenta room (magenta_room).'), nl,
  write('\tsouth - upper_corridor'), nl.

describe(lower_corridor) :-
  write('You are in the corridor at the ground floor (lower_corridor). '), nl,
  write('\twest\t- red_room'), nl,
  write('\tnorth\t- blue_room'), nl,
  write('\teast\t- green_room'), nl,
  write('\tup\t- upper_corridor'), nl.

describe(upper_corridor) :-
  write('You are in the corridor at the second floor (upper_corridor).'), nl,
  write('\twest\t- cyan_room'), nl,
  write('\tnorth\t- magenta_room'), nl,
  write('\teast\t- yellow_room'), nl,
  write('\tdown\t- lower_corridor'), nl.
