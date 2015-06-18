:- module(item, [
  item/2
]).

:- dynamic item/2.

item(yellow_hat, red_room).
item(red_hat, blue_room).
item(blue_hat, green_room).
item(magenta_hat, cyan_room).
item(green_hat, magenta_room).
item(cyan_hat, yellow_room).
