/// @description Insert description here
// You can write your code in this editor

image_speed = 0.3;
var move_speed = 300;
var facing = "D";
var move_dir = irandom(1) == 0 ? -1 : 1; // Random move direction to start with.
var train_size = 11;  // Not including the head.
speed = 0;

var next_body = instance_create_layer(x+32, y, layer_get_id("game_layer"), obj_caterpillar_body);
next_body.my_head = self.id;
next_body.body_num = 1;