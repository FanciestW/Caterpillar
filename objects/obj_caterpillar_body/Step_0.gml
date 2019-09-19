/// @description Insert description here
// You can write your code in this editor

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