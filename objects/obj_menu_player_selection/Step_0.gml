/// @description Insert description here
// You can write your code in this editor
menu_move = (keyboard_check_pressed(vk_down) | gamepad_button_check_pressed(0, gp_padd)) - (keyboard_check_pressed(vk_up) | gamepad_button_check_pressed(0, gp_padu));
menu_enter = keyboard_check_pressed(vk_enter) | keyboard_check_pressed(vk_space) | gamepad_button_check_released(0, gp_face1);

menu_index += menu_move;
if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons - 1) menu_index = 0;
if (menu_enter) {
	switch(menu_index) {
		
		case 0:
			global.num_of_players = 1;
			break;
			
		case 1: // Two Players
			lives = 5;
			global.num_of_players = 2;
			break;
	}
	instance_create_layer(x, y, layer_get_name("menu_layer"), obj_menu_difficulty);
	instance_destroy(self);
}

last_selected = menu_index;
