/// @description Insert description here
// You can write your code in this editor
if (active) {
	speed = 2;
	var player1 = instance_find(obj_flower, 0);
	var target_x = player1.x;
	var target_y = player1.y;
	if (instance_number(obj_flower_player2) >= 1) {
		var player2 = instance_find(obj_flower_player2, 0);
		if (distance_to_object(player2) > distance_to_object(player1)) {
			target_x = player2.x;
			target_y = player2.y;
		}
	}
	move_towards_point(target_x, target_y, speed);
	// show_debug_message("Moving Towards: " + string(target_x) + ", " + string(target_y));
}