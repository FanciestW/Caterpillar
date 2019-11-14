/// @description Diving Down
// You can write your code in this editor
var n = irandom(3)
if (n == 0 && (diving_down || diving_up)) {
	// Switch diving
	diving_down = !diving_down;
	diving_up = !diving_up;
}
else if (n == 1) {
	// Stop diving
	diving_down = false;
	diving_up = false;
}
else {
	// start diving
	if (on_screen && (x > 42 && x <= room_width - 42)) {
		var mid_point = room_height - ((room_height - 15 - 752) / 2)
		if(y > mid_point) {
			diving_up = true;
			diving_down = false;
		} else {
			diving_down = true;
			diving_up = false;
		}
	}
}
alarm[1] = irandom_range(1, 3) * room_speed;