/// @description Insert description here
// You can write your code in this editor
on_screen = x > -32 && x < room_width + 32 && y < room_height + 16 && y > -16 ? true : false;

if (!diving_down && !diving_up) {
	if (moving && !moving_down) {
		x += move_speed * move_xdir;
	}
	if (moving && moving_diag) {
		y += move_speed * move_ydir;	
	}
	if (alarm[1] < 0) alarm[1] = irandom_range(20, 60);
} else {
	if (diving_down && !diving_up && y <= room_height - 15) {
		y += abs(move_speed);
	} else if (!diving_down && diving_up && y >= 752) {
		y -= abs(move_speed);
	} else {
		if (on_screen) event_perform(ev_alarm, 1);
	}
}

if (!on_screen) {
	y = 752;
	moving = false;
	diving_up = false;
	diving_down = false;
} else {
	alarm[0] = irandom_range(1, 2) * room_speed;	// Set random times of entry.
}

// Off screen to the left.
if (!on_screen && x < 0) {
	move_xdir = 1;
}
// Off screen to the right
if (!on_screen && x > room_width) {
	move_xdir = -1;
}

if (y >= room_height - 15) {
	move_ydir = -1;	
}
if (y <= 752) {
	move_ydir = 1;
}

// show_debug_message(string(x) + ", " + string(y));

	