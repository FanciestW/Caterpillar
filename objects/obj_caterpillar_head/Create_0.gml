/// @description Insert description here
// You can write your code in this editor
randomize()
image_speed = 0.3;
isHead = true;
move_speed = 300;
move_dir = irandom(1) == 0 ? -1 : 1; // Random move direction to start with.

facing = move_dir > 0 ? "R" : "L";

last_angle = image_angle;
last_scale = image_xscale;

//TEST
speed_x = 0;
speed_y = 0;

movement_inputs[0] = ord("D");
movement_inputs[1] = ord("W");
movement_inputs[2] = ord("A");
movement_inputs[3] = ord("S");
