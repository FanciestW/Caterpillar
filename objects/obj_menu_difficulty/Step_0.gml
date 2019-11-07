/// @description Insert description here
// You can write your code in this editor
menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
menu_enter = keyboard_check_pressed(vk_enter) | keyboard_check_pressed(vk_space);

menu_index += menu_move;
if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons - 1) menu_index = 0;
if (menu_enter) {
	switch(menu_index) {
		// Easy
		case 0:
			room_goto(game_room);
			break;
		// Normal
		case 1:
			global.move_speed = 3;
			global.max_move_speed = 12;
			global.poisoned_move_speed = 4;
			global.max_poisoned_move_speed = 14;
			room_goto(game_room);
			break;
		// Hard
		case 2:
			global.move_speed = 4;
			global.max_move_speed = 15;
			global.poisoned_move_speed = 6;
			global.max_poisoned_move_speed = 18;
			room_goto(game_room);
			break;
	}
}

last_selected = menu_index;
