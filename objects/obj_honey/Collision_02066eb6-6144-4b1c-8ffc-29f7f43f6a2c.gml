var distance_to_flower = point_distance(created_by.x, created_by.y, other.x, other.y);
if (distance_to_flower <= 32) {
	score += 900;
}
else if (distance_to_flower <= 96) {
	score += 600;
}
else {
	score += 300;
}