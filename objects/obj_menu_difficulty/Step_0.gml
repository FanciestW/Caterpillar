/// @description Insert description here
// You can write your code in this editor
menu_move = (keyboard_check_pressed(vk_down) | gamepad_button_check_pressed(0, gp_padd)) - (keyboard_check_pressed(vk_up) | gamepad_button_check_pressed(0, gp_padu));
menu_enter = keyboard_check_pressed(vk_enter) | keyboard_check_pressed(vk_space) | gamepad_button_check_released(0, gp_face1);

menu_index += menu_move;
if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons - 1) menu_index = 0;
if (menu_enter) {
	switch(menu_index) {
		case 0: // Easy
			global.move_speed = 2;
			global.max_move_speed = 10;
			global.poisoned_move_speed = 3;
			global.max_poisoned_move_speed = 12;
			break;
			
		case 1: // Normal
			global.move_speed = 3;
			global.max_move_speed = 12;
			global.poisoned_move_speed = 4;
			global.max_poisoned_move_speed = 14;
			break;
			
		case 2: // Hard
			global.move_speed = 4;
			global.max_move_speed = 15;
			global.poisoned_move_speed = 6;
			global.max_poisoned_move_speed = 18;
			break;
	}
	room_goto(game_room);
}

last_selected = menu_index;
