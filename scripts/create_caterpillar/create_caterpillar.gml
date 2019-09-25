var length = argument0;
var pos_x = argument1;
var pos_y = argument2;
var head = instance_create_layer(pos_x, pos_y, layer_get_id("game_layer"), obj_caterpillar_head);

caterpillar[0] = head;
head_dir = head.facing;
for (var i = 1; i < length; i+=1) {
	switch (head_dir) {
		case "L":
			caterpillar[i] = instance_create_layer(pos_x+32*i, pos_y, layer_get_id("game_layer"), obj_caterpillar_body);
			break;
		
		case "R": 
			caterpillar[i] = instance_create_layer(pos_x-32*i, pos_y, layer_get_id("game_layer"), obj_caterpillar_body);
			break;

		case "U":
			caterpillar[i] = instance_create_layer(pos_x, pos_y+32*i, layer_get_id("game_layer"), obj_caterpillar_body);
			break;
		
		case "D":
			caterpillar[i] = instance_create_layer(pos_x, pos_y-32*i, layer_get_id("game_layer"), obj_caterpillar_body);
			break;
	}
	caterpillar[i].following = caterpillar[i-1];
	caterpillar[i].body_num = i;
	caterpillar[i].my_head = caterpillar[0];
	caterpillar[i].facing = caterpillar[0].facing;
	caterpillar[i].move_xdir = caterpillar[0].move_xdir;
	caterpillar[i].move_ydir = caterpillar[0].move_ydir;
	caterpillar[i].move_speed = caterpillar[0].move_speed;
	caterpillar[i].hspeed = caterpillar[i].move_speed * caterpillar[i].move_xdir;
}
for (var i = 0; i < length - 1; i += 1) {
	caterpillar[i].followed_by = caterpillar[i+1];	
}
