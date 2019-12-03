/// @description Insert description here
// You can write your code in this editor
active = false;
image_speed = 1;
speed = 2;
var side = irandom(2);
if (side == 0) {
	x = irandom(room_width / 32) * 32;
	y = -32;
} else if (side == 1) {
	x = -32;
	y = irandom((room_height - (32 * 10)) / 32) * 32;
} else {
	x = room_width;
	y = irandom((room_height - (32 * 10)) / 32) * 32;
}

alarm[0] = irandom_range(3, 10) * room_speed; // Set random time to begin movement.