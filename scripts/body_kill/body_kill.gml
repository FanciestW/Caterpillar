/*
 * @function body_kill(killed_body, following_body, followed_body)
 * @description Spawns a lotus, kills body then upgrades the following body.
 * @param killed_boxy: The id of the body that was killed.
 * @param following_body: The id of the body instance to upgrade to a head object.
 * @param followed_body: The id of the body that the killed body followed
 */
var killed_body = argument0;
var following_body = argument1;
var followed_body = argument2;
 
// Create lotus where body died
instance_create_layer(killed_body.x-16, killed_body.y-16, layer_get_id("game_layer"), obj_lotus)
instance_destroy(killed_body, true)

// Set followed_by for the killed body's following body OR head to noone.
if (instance_exists(followed_body)) {
	followed_body.followed_by = noone;	
}

// Upgrade following to head
if (instance_exists(following_body)) {
	// create new head
	var new_head = instance_create_layer(following_body.x, following_body.y, layer_get_id("game_layer"), obj_caterpillar_head)	
	
	// Set new following body to new head and body follower.
	new_head.followed_by = following_body.followed_by
	if (instance_exists(following_body.followed_by)) {
		following_body.followed_by.following = new_head;
	}
	
	// Set all new heads to followers
	var follower = following_body
	while(instance_exists(follower.followed_by)) {
		follower = follower.followed_by;
		follower.my_head = new_head;
	}
	instance_destroy(following_body);
}