:- module(directions, [
  north/0,
  south/0,
  west/0,
  east/0,
  up/0,
  down/0
]).

:- use_module(actions).

north :- go(north).
south :- go(south).
west :- go(west).
east :- go(east).
up :- go_stairs(up).
down :- go_stairs(down).
