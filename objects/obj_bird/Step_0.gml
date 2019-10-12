/// @description Insert description here
// You can write your code in this editor
on_screen = x > -32 && x < room_width + 32 && y < room_height + 16 && y > -16 ? true : false;

if (moving) {
	x += move_speed * move_xdir;
}
if (moving && moving_diag) {
	y += move_speed * move_ydir;	
}

if (!on_screen) {
	moving = false;
	alarm[0] = random(10) * room_speed;	// Set random times of entry.
}

// Off screen to the left.
if (!on_screen && x < 0) {
	move_xdir = 1;	
}
// Off screen to the right
if (!on_screen && x > room_width) {
	move_xdir = -1;
}

if (y >= room_height - 16) {
	move_ydir = -1;	
}
if (y < 768) {
	move_ydir = 1;
}

	