if (moving) {
	x += move_speed * move_dir;
}
on_screen = x > -32 && x < room_width && y > -32 && y < room_height;
if (moving && !on_screen) {
	instance_destroy();
}