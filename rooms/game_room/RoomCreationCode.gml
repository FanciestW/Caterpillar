global.num_of_heads = 0;
global.num_of_bodies = 0;
global.num_of_player_lotuses = 0;
global.player_y_border = room_height - (32 * 6);

lotus_percentage = .1;
num_of_lotuses = 30 * 23 * lotus_percentage;

generate_lotuses();

for (var i = 0; i < global.level; i++) {
	create_caterpillar(1, 463, 16);
}
if (global.level < 12) create_caterpillar(12-global.level, 463, -16);
if (global.num_of_players >= 2) {
	instance_create_layer(32, room_height - 32, layer_get_name("game_layer"), obj_flower_player2);
}
