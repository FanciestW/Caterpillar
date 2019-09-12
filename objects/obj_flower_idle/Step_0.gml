/// @description Insert description here
// You can write your code in this editor

// Check key checks
var k_up = keyboard_check(ord("W"));
var k_left = keyboard_check(ord("A"));
var k_down = keyboard_check(ord("S"));
var k_right = keyboard_check(ord("D"));
var k_space = keyboard_check_pressed(vk_space);

var seconds_passed = delta_time / 1000000;
var move_speed_this_frame = move_speed * seconds_passed;

