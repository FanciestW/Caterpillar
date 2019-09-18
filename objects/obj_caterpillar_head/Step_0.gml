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

var seconds_passed = delta_time / 1000000;
var move_speed_this_frame = move_speed * seconds_passed;

var move_xinput = 0;
var move_yinput = 0;

x=clamp(x,sprite_width,room_width-sprite_width);
y=clamp(y,sprite_height,room_height-sprite_height);
 
for ( var i = 0; i < array_length_1d(movement_inputs); i++){
    var this_key = movement_inputs[i];
    if keyboard_check(this_key) {
        var this_angle = i * 90;
        move_xinput += lengthdir_x(1, this_angle);
        move_yinput += lengthdir_y(1, this_angle);
    }
}
 
var moving = ( point_distance(0,0,move_xinput,move_yinput) > 0 );
if moving  {
    var move_dir = point_direction(0,0,move_xinput,move_yinput);
    flower_move(move_speed_this_frame,  move_dir);
}