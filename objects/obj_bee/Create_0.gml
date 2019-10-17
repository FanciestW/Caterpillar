/// @description Insert description here
// You can write your code in this editor
active = false;
moving = false;
hits = 2;
init_speed = 2;
curr_speed = init_speed;
y = -32;
x = irandom(room_width / 32) * 32;
lotus_chance = .25;

alarm[0] = room_speed * 5;