draw_set_font(menu_font);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_alpha(0.7); // Set the text color transparency.
draw_text(x, y-16, "Score: " + string(score) + " Lives: " + string(lives));
draw_set_alpha(1);