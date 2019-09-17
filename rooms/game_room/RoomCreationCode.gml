lotus_percentage = .1;
num_of_lotuses = 30 * 30 * lotus_percentage;

var xx, yy;
for(var i = 0; i < num_of_lotuses; i++) {
    do {
        xx = irandom_range(0, room_width/32) * 32;
        yy = irandom_range(1, room_height/32 - 7) * 32;
    } until (place_free(xx, yy));
	
	instance_create_layer(xx, yy, layer_get_id("game_layer"), obj_lotus);
}

n_lotuses = 6 * 30 * lotus_percentage / 2;

for(var i = 0; i < n_lotuses; i++) {
    do {
        xx = irandom_range(0, room_width/32) * 32;
        yy = irandom_range(25, room_height/32) * 32;
    } until (place_free(xx, yy));
	
	instance_create_layer(xx, yy, layer_get_id("game_layer"), obj_lotus);
}
