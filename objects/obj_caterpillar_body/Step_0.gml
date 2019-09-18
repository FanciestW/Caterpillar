/// @description Insert description here
// You can write your code in this editor

image_xscale = -1 * my_head.move_xdir;
x = following.xprevious - 28 * my_head.move_xdir;
y = following.yprevious;

if (x == xprevious && y == yprevious) {
	image_speed = 0;
} else {
	image_speed = default_image_speed;	
}