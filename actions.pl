:- module(actions, [
  go/1,
  go_stairs/1,
  look_around/0,
  check_items/1,
  take/1,
  drop/1
]).

:- use_module(describe).
:- use_module(door).
:- use_module(stairs).
:- use_module(item).

% look_around
look_around :-
  i_am_in(Room),
  describe(Room),
  check_items(Room).

% go
go(Direction) :-
  i_am_in(Current),
  door(Current, Direction, Target),
  retract(i_am_in(Current)),
  assert(i_am_in(Target)),
  look_around.

% go_stairs
go_stairs(Direction) :-
  i_am_in(Current),
  stairs(Current, Direction, Target),
  retract(i_am_in(Current)),
  assert(i_am_in(Target)),
  look_around.

% check_items
check_items(Room) :-
  item(Item, Room),
  write('There is: '), write(Item), nl.

check_items(_).

% take
take(Item) :-
  item(Item, bag),
  write('You already have this item.'), nl.

take(Item) :-
  i_am_in(Room),
  item(Item, Room),
  retract(item(Item, Room)),
  assert(item(Item, bag)),
  write('You\'ve taken the: '), write(Item), write(', from: '), write(Room), nl.

take(_) :-
  write('There\'s nothing to take...'), nl.

% drop
drop(Item) :-
  item(Item, bag),
  i_am_in(Room),
  retract(item(Item, bag)),
  assert(item(Item, Room)),
  write('You\'ve dropped: '), write(Item), write(' at the: '), write(Room), nl.

drop(_) :-
  write('You don\'t have such thing in a bag.'), nl.

