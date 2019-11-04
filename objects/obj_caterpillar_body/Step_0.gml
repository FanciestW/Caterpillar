/// @description Insert description here
// You can write your code in this editor
in_player_area = y > room_height - (32 * 7);

if(place_meeting(x, y, obj_poison_lotus)) {
	if (instance_exists(following) && following.poisoned) poisoned = true;
}

// Check if isHead and become head
if (isHead) {
	// Make into a head and do appropriate stuff.
	instance_change(obj_caterpillar_head, true);
}

image_xscale = -1 * move_xdir;

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
}

if (poisoned && !in_player_area) {
	if (alarm[0] <= -1) {
		alarm[0] = room_speed / poisoned_speed;
	}
	
	if (moving_down) {
		vspeed = poisoned_speed;	
	} else {
		vspeed = 0;
	}
	
	if (vspeed <= 0) {
		hspeed = move_xdir * poisoned_speed;	
	} else {
		hspeed = 0;
	}
}
else {
	vspeed = 0;
	hspeed = move_xdir * move_speed;

	// Move left and right and check if hitting lotuses.
	if (x <= 0) {
		move_xdir *= -1;
		hspeed = move_xdir * move_speed;
		x = 1;
		y += (32 * move_ydir);
	} else if (x >= room_width) {
		move_xdir *= -1;
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