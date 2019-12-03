if (active) {
	if (ammo_left > 0 && state != 2) {
		sprite_index = spr_flower_shooting;
		image_speed = 2;
		image_xscale = 1;
		image_yscale = 1;
		bullet = instance_create_layer(x + 15, y + 10, layer_get_id("game_layer"), obj_honey);
		bullet.created_by = self;
		ammo_left -= 1;
		audio_play_sound(snd_shoot, 100, false);
	} 
	else if (state == 2) {
		
		sprite_index = spr_flower_dying;
		image_speed = 2;
		image_xscale = 1;
		image_yscale = 1;
		if (image_index >= 13) {
			instance_destroy();
		}
	}
	else {
		sprite_index = spr_flower_idle;
		image_speed = 2;
		image_xscale = 1;
		image_yscale = 1;
	}
}