/// @description Insert description here
// You can write your code in this editor
switch (facing) {
	case "U":
		image_angle = move_dir < 0 ? 270 : 90;
		image_xscale = move_dir < 0 ? 1 : -1;
		break;
	case "D":
		image_angle = move_dir > 0 ? 270 : 90;
		image_xscale = move_dir > 0 ? -1 : 1;
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