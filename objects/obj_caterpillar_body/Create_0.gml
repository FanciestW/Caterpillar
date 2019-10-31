/// @description Insert description here
// You can write your code in this editor
global.num_of_bodies += 1;
default_image_speed = 0.6;
image_speed = default_image_speed;
isHead = false;
following = noone;
followed_by = noone;
body_num = undefined;
my_head = noone;
reached_bottom = false;
poisoned = false;
in_player_area = false;
moving_down = false;

move_speed = global.move_speed;
poisoned_speed = global.poisoned_move_speed;
move_xdir = instance_exists(my_head) ? my_head.move_xdir : -1;
move_ydir = instance_exists(my_head) ? my_head.move_ydir : 1;


facing = "L";
hspeed = move_speed * move_xdir;