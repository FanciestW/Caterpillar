// Alarm to trigger moving through play area.
// You can write your code in this editor
show_debug_message("Alarm Triggered at pos: " + string(x) + ", " + string(y) + "with speed: " + string(speed) + "and move xspeed: " + string(move_xdir));
if (move_xdir > 0) {
	x = 0;
} else {
	x = room_width;
}
moving = true;