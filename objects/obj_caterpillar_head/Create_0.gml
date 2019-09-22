/// @description Insert description here
// You can write your code in this editor
randomize();
image_speed = 0.3;
isHead = true;
move_speed = 5;
move_xdir = irandom(1) == 0 ? -1 : 1; // Random move direction to start with.
move_ydir = 1;	// 1 going down, -1 going up.
reached_bottom = false;
hspeed = move_speed * move_xdir;

facing = move_xdir > 0 ? "R" : "L";
