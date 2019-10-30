on_screen = x >= -64 && x <= room_width && y >= -32 && y <= room_height;
if (moving) {
	show_debug_message("moving");
	x += move_speed * move_dir;
}
if (moving && !on_screen) {
	instance_destroy();
}