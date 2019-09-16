/// @description Insert description here
// You can write your code in this editor
menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
menu_enter = keyboard_check_pressed(vk_enter) | keyboard_check_pressed(vk_space);

menu_index += menu_move;
if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons - 1) menu_index = 0;
if (menu_enter) {
	switch(menu_index) {
		// Play
		case 0:
			break;
		// Exit
		case 1:
			game_end();
			break;
	}
}

last_selected = menu_index;
