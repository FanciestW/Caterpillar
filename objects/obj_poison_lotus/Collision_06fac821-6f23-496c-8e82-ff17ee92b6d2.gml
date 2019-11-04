/// @description Insert description here
// You can write your code in this editor
image_index += 1;
if (image_index >= 4) {
	score += 1;
	instance_destroy();
}
audio_play_sound(snd_splat, 100, false);