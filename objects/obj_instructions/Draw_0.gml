/// @description Insert description here
// You can write your code in this editor
draw_rectangle_color(pos_x, pos_y, pos_x + 580, pos_y + lines * line_h + 70, c_gray, c_gray, c_gray, c_gray, false);

var i = 0;
repeat(lines) {
	draw_set_font(menu_font);
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	draw_text(pos_x, pos_y + line_h * i, " " + line[i]);
	i++;
}

