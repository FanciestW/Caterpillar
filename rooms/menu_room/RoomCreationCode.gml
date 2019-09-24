global.num_of_heads = 0;
global.num_of_lives = 2;
lotus_percentage = .1;
num_of_lotuses = 30 * 23 * lotus_percentage;

// Generate top 24 rows of lotuses
var xx, yy;
for(var i = 0; i < num_of_lotuses; i++) {
    do {
        xx = irandom_range(1, room_width/32 - 2) * 32;
        yy = irandom_range(1, room_height/32 - 7) * 32;
		if (xx == 480 && yy == 32) continue;
    } until (place_free(xx, yy));
	
	instance_create_layer(xx, yy, layer_get_id("game_layer"), obj_lotus);
}


// Generate bottom 6 grids lotuses
n_lotuses = 6 * 30 * lotus_percentage / 2;
for(var i = 0; i < n_lotuses; i++) {
    do {
        xx = irandom_range(1, room_width/32 - 2) * 32;
        yy = irandom_range(24, room_height/32- 2) * 32;
    } until (place_free(xx, yy));
	
	instance_create_layer(xx, yy, layer_get_id("game_layer"), obj_lotus);
}

create_caterpillar(12, 496, 16);
