/// @description Insert description here
// You can write your code in this editor
if (global.num_of_player_lotuses <= 5 && active) {
	moving = true;
}
if (moving) {
	y += curr_speed;
	if (irandom(1/lotus_chance) == 0) {
		var place_x = round_down(x, 32);
		var place_y = round_down(y, 32);
		if (!place_meeting(place_x, place_y, obj_lotus) && !place_meeting(place_x, place_y - 32, obj_lotus)) {
			instance_create_layer(place_x, place_y, layer_get_id("game_layer"), obj_lotus);	
		}
	}
}
if (y > room_height) {
	instance_destroy(self);
	instance_create_layer(0, -32, layer_get_id("game_layer"), obj_bee);	
}
if (hits <= 0) {
	instance_destroy(self);
} else if (hits <= 1) {
	curr_speed = init_speed * 2;
} else {
	curr_speed = init_speed;
}