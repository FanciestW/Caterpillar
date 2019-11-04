/// @description Insert description here
// You can write your code in this editor
if (lives > 0) {
	if (room_get_name(room) != "menu_room") lives -= 1;
	room_restart();
} else {
	room_goto(game_over_room);
}