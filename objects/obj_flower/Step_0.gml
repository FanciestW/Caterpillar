if (active) {
	move_speed = global.move_speed * 100;

	if (position_meeting(x, y, obj_caterpillar_body) || position_meeting(x, y, obj_caterpillar_head)) {
		state = 2;	
	}

	switch(state) {
		case 0:  // Idle
			sprite_index = spr_flower_idle;
			break;
		case 1:  // Shooting
			sprite_index = spr_flower_shooting;
			break;
		case 2:  // Dying
			move_speed = 0;
			sprite_index = spr_flower_dying;
			image_speed = 1;
			image_xscale = 1;
			image_yscale = 1;
			if (image_index >= 13) {
				instance_destroy(self, true);
			}
			break;
	}

	var seconds_passed = delta_time / 1000000;
	var move_speed_this_frame = move_speed * seconds_passed;

	var move_xinput = 0;
	var move_yinput = 0;

	x=clamp(x,0,room_width-sprite_width);
	y=clamp(y,32*24,room_height-sprite_height);
 
	for ( var i = 0; i < array_length_1d(movement_inputs); i++){
	    var this_key = movement_inputs[i];
	    if keyboard_check(this_key) {
	        var this_angle = i * 90;
	        move_xinput += lengthdir_x(1, this_angle);
	        move_yinput += lengthdir_y(1, this_angle);
	    }
	}
	if (gamepad_is_connected(0)) {
		if (gamepad_button_check(0, gp_face1) && ammo_left > 0 && state != 2) {
			sprite_index = spr_flower_shooting;
			image_speed = 2;
			image_xscale = 1;
			image_yscale = 1;
			bullet = instance_create_layer(x + 15, y + 10, layer_get_id("game_layer"), obj_honey);
			bullet.created_by = self;
			ammo_left -= 1;
			audio_play_sound(snd_shoot, 100, false);
		}
		for ( var i = 0; i < array_length_1d(gamepad_inputs); i++){
		    var this_key = gamepad_inputs[i];
		    if gamepad_button_check(0, this_key) {
		        var this_angle = i * 90;
		        move_xinput += lengthdir_x(1, this_angle);
		        move_yinput += lengthdir_y(1, this_angle);
		    }
		}
	}
 
	var moving = ( point_distance(0,0,move_xinput,move_yinput) > 0 );
	if moving  {
	    var move_dir = point_direction(0,0,move_xinput,move_yinput);
	    flower_move(move_speed_this_frame,  move_dir);
	}
}
