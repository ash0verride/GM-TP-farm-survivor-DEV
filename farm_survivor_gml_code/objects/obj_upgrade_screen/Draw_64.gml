draw_sprite(spr_ui_home_screen, 0, 1920 / 2, 1080 / 2);

draw_set_colour(c_black);
draw_set_alpha(0.4);

draw_rectangle(0, 0, 1920, 1080, 0);

draw_set_colour(c_white);
draw_set_alpha(1);

draw_set_font(fnt_large);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(1920 / 2, 175, string("UPGRADE") + "");