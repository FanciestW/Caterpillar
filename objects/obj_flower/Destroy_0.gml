/// @description Insert description here
// You can write your code in this editor
if (global.num_of_lives > 0) {
	global.num_of_lives -= 1;
	room_restart();
} else {
	room_goto(menu_room);
}