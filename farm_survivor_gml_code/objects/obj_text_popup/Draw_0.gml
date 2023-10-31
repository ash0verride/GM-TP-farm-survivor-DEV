// Set the color of the popup text.
draw_set_colour(color);
draw_set_alpha(image_alpha);
draw_set_font(fnt_small);

// Draw the text.
draw_text(x + 0, y + 0, string("") + string(abs(floor(text * 100))));

draw_set_alpha(1.0);