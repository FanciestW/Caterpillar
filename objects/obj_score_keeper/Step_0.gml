/// @description Insert description here
// You can write your code in this editor
if (score_live >= extra_life_score) {
	show_debug_message("Reset Score Live");
	score_live = 0;
	lives += 1;
	extra_life_gained += 1;
}
score_live = score - (extra_life_score * extra_life_gained);

// Check win condition
if (global.num_of_bodies <= 0 and global.num_of_heads <= 0) {
	global.level += 1;
	room_restart();
}

// Used to debug lives counter.
// show_debug_message("Score Lives: " + string(score_live) + " Real Lives: " + string(lives));