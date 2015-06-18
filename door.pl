:- module(door, [
  door/3
]).

door(lower_corridor, west, red_room).
door(red_room, east, lower_corridor).
door(lower_corridor, north, blue_room).
door(blue_room, south, lower_corridor).
door(lower_corridor, east, green_room).
door(green_room, west, lower_corridor).
door(upper_corridor, west, cyan_room).
door(cyan_room, east, upper_corridor).
door(upper_corridor, north, magenta_room).
door(magenta_room, south, upper_corridor).
door(upper_corridor, east, yellow_room).
door(yellow_room, west, upper_corridor).
