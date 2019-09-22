/// @description Insert description here
// You can write your code in this editor
if (ammo_left > 0) {
	sprite_index = 1;
	bullet = instance_create_layer(x + 15, y + 10, layer_get_id("game_layer"), obj_honey);
	bullet.created_by = self;
	ammo_left -= 1;
} else {
	sprite_index = 0;	
}