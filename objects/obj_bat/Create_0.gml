/// @description Insert description here
// You can write your code in this editor
active = false;
image_speed = 1;
speed = 0;
var side = irandom(2);
if (side == 0) {
	x = irandom(room_width / 48) * 48;
	y = -48;
} else if (side == 1) {
	x = -48;
	y = irandom((room_height - (48 * 10)) / 48) * 48;
} else {
	x = room_width;
	y = irandom((room_height - (48 * 10)) / 48) * 48;
}

alarm[0] = irandom_range(3, 10) * room_speed; // Set random time to begin movement.

// show_debug_message("Bat Created At: " + string(x) + ", " + string(y));