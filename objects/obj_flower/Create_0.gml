/// @description Insert description here
// You can write your code in this editor
image_speed = 0.5;
move_speed = 300;
ammo_left = 1;
state = 0; // 0: idle; 1=shooting; 2=dying;
active = room_get_name(room) == "game_room" ? true : false;

movement_inputs[0] = vk_right;
movement_inputs[1] = vk_up;
movement_inputs[2] = vk_left;
movement_inputs[3] = vk_down;