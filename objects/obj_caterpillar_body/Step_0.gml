/// @description Insert description here
// You can write your code in this editor
if (my_head != undefined && body_num != undefined) {
	if (my_head.train_size - body_num > 0) {
		next_body = instance.create_layer(x+32, y, layer_get_id("game_layer"), obj_caterpillar_body);
		next_body.my_head = self.my_head;
		next_body.body_num = self.body_num + 1;
	}
}