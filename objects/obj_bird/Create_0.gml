/// @description Insert description here
// You can write your code in this editor
diag_chance = 10;
move_speed = 3;
move_xdir = x >= room_width / 2 ? -1 : 1;
move_ydir = y >= 32 * 6 / 2 ? 1 : -1;
on_screen = x > -32 && x < room_width + 32 && y < room_height + 16 && y > -16 ? true : false;
moving = false;
moving_diag = true;
moving_down = false;

alarm[0] = random(5) * room_speed; // Set random time to begin movement.
	