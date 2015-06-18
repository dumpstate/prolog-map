:- module(actions, [
  go/1,
  go_stairs/1,
  look_around/0
]).

:- use_module(describe).
:- use_module(door).
:- use_module(stairs).

look_around :-
  i_am_in(Room),
  describe(Room).

go(Direction) :-
  i_am_in(Current),
  door(Current, Direction, Target),
  retract(i_am_in(Current)),
  assert(i_am_in(Target)),
  look_around.

go_stairs(Direction) :-
  i_am_in(Current),
  stairs(Current, Direction, Target),
  retract(i_am_in(Current)),
  assert(i_am_in(Target)),
  look_around.
