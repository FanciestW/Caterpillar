/// @description Insert description here
// You can write your code in this editor
pos_x = x;
pos_y = y;
line_h = 64;

// Options
button[0] = room_get_name(room) == "menu_room" ? "Play" : "Play Again";
button[1] = "Exit";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;