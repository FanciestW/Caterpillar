global.num_of_heads = 0;
global.num_of_bodies = 0;
global.num_of_player_lotuses = 0;
global.player_y_border = room_height - (32 * 6);
global.move_speed = 5;
global.poisoned_move_speed = 10;

lotus_percentage = .1;
num_of_lotuses = 30 * 23 * lotus_percentage;

generate_lotuses();

create_caterpillar(12, 463, -16);
