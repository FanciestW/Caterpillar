/// @description Insert description here
// You can write your code in this editor
global.num_of_heads += 1;
randomize();
image_speed = 0.3;
isHead = true;
followed_by = noone;
move_speed = 5;
move_xdir = irandom(1) == 0 ? -1 : 1; // Random move direction to start with.
move_ydir = 1;	// 1 going down, -1 going up.
reached_bottom = false;
spawn_head = false;

facing = move_xdir > 0 ? "R" : "L";

if (x <= 32) move_xdir = 1;
else if (x >= room_width - 32) move_xdir = -1;
if (y >= room_height - 64) {
	move_ydir = -1;
	reached_bottom = true;
}