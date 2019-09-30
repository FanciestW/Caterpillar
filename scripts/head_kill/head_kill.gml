/*
 * @function head_kill(head_id, body_id)
 * @description Kill a head and upgrade it's following body.
 * @param head_id: The id of the head instance to destroy.
 * @param body_id: The id of the body instance to upgrade to a head object.
 */

var head = argument0;
var body = argument1;

instance_create_layer(head.x-16, head.y-16, layer_get_id("game_layer"), obj_lotus);
if (instance_exists(body)) {
	var new_head = instance_create_layer(body.x, body.y, layer_get_id("game_layer"), obj_caterpillar_head);
	new_head.move_xdir = body.move_xdir;
	new_head.followed_by = body.followed_by;
	instance_destroy(body);
}
if (instance_exists(head)) {
	instance_destroy(head);
}