/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
instance_destroy(self)

var flower = instance_find(obj_flower, 0);
var distance_to_flower = abs(flower.y - other.y);
if (distance_to_flower <= 32) {
	score += 900;
}
else if (distance_to_flower <= 96) {
	score += 600;
}
else {
	score += 300;
}