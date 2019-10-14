global.num_of_heads = 0;
global.num_of_bodies = 0;
global.num_of_lives = 2;
global.num_of_player_lotuses = 0;
global.player_y_border = room_height - (32 * 6);

lotus_percentage = .1;
num_of_lotuses = 30 * 23 * lotus_percentage;

generate_lotuses();

create_caterpillar(12, 496, 16);
