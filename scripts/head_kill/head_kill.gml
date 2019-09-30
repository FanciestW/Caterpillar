/*
 * @function head_kill(head_id, body_id)
 * @description Kill a head and upgrade it's following body.
 * @param head_id: The id of the head instance to destroy.
 * @param body_id: The id of the body instance to upgrade to a head object.
 */

var head = argument0;
var body = argument1;

var new_head = instance_create_layer(body.x, body.y, layer_get_id("game_layer"), obj_caterpillar_head);
new_head.move_xdir = body.move_xdir;
new_head.followed_by = body.followed_by;
instance_destroy(head);
instance_destroy(body);