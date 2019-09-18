var length = argument0;
var pos_x = argument1;
var pos_y = argument2;
var head = instance_create_layer(pos_x, pos_y, layer_get_id("game_layer"), obj_caterpillar_head);

caterpillar[0] = head;
for (var i = 1; i < length; i+=1) {
	caterpillar[i] = instance_create_layer(pos_x+32*i, pos_y, layer_get_id("game_layer"), obj_caterpillar_body);
	caterpillar[i].following = caterpillar[i-1];
	caterpillar[i].body_num = i;
	caterpillar[i].my_head = caterpillar[0];
}
