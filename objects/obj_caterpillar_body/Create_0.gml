/// @description Insert description here
// You can write your code in this editor
image_speed = 0.8;
var next_body = undefined;
var body_num = undefined;
var my_head = undefined;
var move_speed = my_head == undefined ? 300 : my_head.move_speed;

if (my_head.train_size - body_num > 0) {
	next_body = instance_create_layer(x+32, y, layer_get_id("game_layer"), obj_caterpillar_body);
	with next_body {
		other.my_head = self.my_head;
		other.body_num = self.body_num + 1;
	}
}