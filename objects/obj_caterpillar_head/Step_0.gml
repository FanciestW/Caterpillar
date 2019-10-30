/// @description Insert description here
// You can write your code in this editor
in_player_area = y > room_height - (32 * 7);

if(place_meeting(x, y, obj_poison_lotus)) {
	poisoned = true;
}

hspeed = move_speed * move_xdir;
// Move in the direction and update facing;
if (move_xdir > 0) {
	facing = "R";
} else {
	facing = "L";
}

// Check if hit bottom of screen.
if (y >= room_height - 32) {
	move_ydir = -1;
	reached_bottom |= true;
} else if (reached_bottom && y <= room_height - 32 * 6) {
	move_ydir = 1;
	spawn_head = false;
}

if (poisoned && !in_player_area) {
	vspeed = move_xdir * move_speed;
}
else {
	vspeed = 0;
	// Move left and right and check if hitting lotuses.
	if (x <= 0) {
		move_xdir = 1;
		hspeed = move_xdir * move_speed;
		x = 1;
		y += (32 * move_ydir);
	} else if (x >= room_width) {
		move_xdir = -1;
		hspeed = move_xdir * move_speed;
		x = room_width - 1;
		y += (32 * move_ydir);
	} else if (!place_free(x, y)) {
		move_xdir *= -1;
		hspeed = move_xdir * move_speed;
		y += (32 * move_ydir);
	}
}

// Handling what way the to face
switch (facing) {
	case "U":
		image_angle = move_xdir < 0 ? 270 : 90;
		image_xscale = move_xdir < 0 ? 1 : -1;
		break;
	case "D":
		image_angle = move_xdir > 0 ? 270 : 90;
		image_xscale = move_xdir > 0 ? -1 : 1;
		break;
	
	case "L":
		image_angle = 0;
		image_xscale = 1;
		break;
		
	case "R":
		image_angle = 0;
		image_xscale = -1;
		break;
}

// Check if at bottom corner, if so generate new head
if (move_ydir == -1 && x <= 32 && !spawn_head && move_xdir < 0 && global.num_of_heads < 5) {
	spawn_head = true;
	var corner = irandom(3);
	switch(corner) {
		case 0: // Top left
			instance_create_layer(15, 752, layer_get_id("game_layer"), obj_caterpillar_head);
			break;
		case 1: // Top right
			instance_create_layer(room_width - 16, 752, layer_get_id("game_layer"), obj_caterpillar_head);
			break;
		case 2: // Bottom left
			instance_create_layer(15, 912, layer_get_id("game_layer"), obj_caterpillar_head);
			break;
		case 3: // Bottom right
			instance_create_layer(room_width - 16, 912, layer_get_id("game_layer"), obj_caterpillar_head);
			break;
	}
}
else if (move_ydir == -1 && x >= room_height - 32 && !spawn_head && move_xdir > 0 && global.num_of_heads < 5) {
	spawn_head = true;
	var corner = irandom(3);
	switch(corner) {
		case 0: // Top left
			instance_create_layer(15, 752, layer_get_id("game_layer"), obj_caterpillar_head);
			break;
		case 1: // Top right
			instance_create_layer(room_width - 16, 752, layer_get_id("game_layer"), obj_caterpillar_head);
			break;
		case 2: // Bottom left
			instance_create_layer(15, 912, layer_get_id("game_layer"), obj_caterpillar_head);
			break;
		case 3: // Bottom right
			instance_create_layer(room_width - 16, 912, layer_get_id("game_layer"), obj_caterpillar_head);
			break;
	}
}
