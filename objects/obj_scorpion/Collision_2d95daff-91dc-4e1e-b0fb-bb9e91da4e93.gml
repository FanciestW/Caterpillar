lotus_x = other.x;
lotus_y = other.y;
instance_destroy(other);
instance_create_layer(lotus_x, lotus_y, layer_get_id("game_layer"), obj_poison_lotus);