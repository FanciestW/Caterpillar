if (score_live >= extra_life_score) {
	score_live = 0;
	lives += 1;
	extra_life_gained += 1;
}
score_live = score - (extra_life_score * extra_life_gained);

// Check win condition
if (global.num_of_bodies <= 0 and global.num_of_heads <= 0) {
	global.level += 1;
	if (global.move_speed < global.max_move_speed) {
		global.move_speed += 1;
	} else {
		global.move_speed = global.max_move_speed;
	}
	
	if (global.poisoned_move_speed < global.max_poisoned_move_speed) {
		global.poisoned_move_speed += 1;
	} else {
		global.poisoned_move_speed = global.max_poisoned_move_speed;
	}
	room_restart();
}

// Used to debug lives counter.
// show_debug_message("Score Lives: " + string(score_live) + " Real Lives: " + string(lives));