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

move_speed = instance_exists(my_head) ? my_head.move_speed : 3;
move_xdir = instance_exists(my_head) ? my_head.move_xdir : -1;
move_ydir = instance_exists(my_head) ? my_head.move_ydir : 1;


facing = "L";
hspeed = move_speed * move_xdir;