// Draw self, this is the button sprite.
draw_self();

// Set font.
draw_set_font(fnt_medium);

// Center align drawn text horizontally and vertically.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Set color to opaque black.
draw_set_colour(c_black);
draw_set_alpha(1);

// Draw resumt title text.
draw_text(x + 0, y + 20, string("RESUME") + "");