/// @description Insert description here
// You can write your code in this editor
var i = 0;
repeat(buttons) {
	draw_set_font(menu_font);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	if (menu_index == i){
		draw_set_color(c_red);
		draw_text(pos_x, pos_y + line_h * i, ">" + button[i]);
	} else {
		draw_text(pos_x, pos_y + line_h * i, " " + button[i]);
	}
	i++;
}