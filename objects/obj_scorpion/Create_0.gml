x = irandom(1) == 0 ? -64 : room_width;
y = irandom(room_height / 32 - 7) * 32;
on_screen = false;
move_speed = 2;
moving = false;
move_dir = x >= room_width ? -1 : 1;
alarm[0] = irandom_range(10, 30) * room_speed;	// Set Entry Time Randomly

show_debug_message(string(x) + ", " + string(y));