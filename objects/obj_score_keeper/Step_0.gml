/// @description Insert description here
// You can write your code in this editor
score_live = score;
if (score_live >= 12000) {
	score_live = 0;
	lives += 1;
}

// Check win condition
if (global.num_of_bodies <= 0 and global.num_of_heads <= 0) {
	global.level += 1;
	room_restart();
}