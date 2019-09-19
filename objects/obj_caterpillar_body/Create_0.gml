/// @description Insert description here
// You can write your code in this editor
default_image_speed = 0.6;
image_speed = default_image_speed;
isHead = false;
following = undefined;
body_num = undefined;
my_head = undefined;
reached_bottom = false;

move_speed = my_head == undefined ? 3 : my_head.move_speed;
move_xdir = my_head == undefined ? -1 : my_head.move_xdir;
move_ydir = my_head == undefined ? 1 : my_head.move_ydir;


facing = "L";
hspeed = move_speed * move_xdir;