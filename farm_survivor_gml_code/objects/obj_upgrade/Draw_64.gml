if(mouse_over)
{
	draw_sprite(spr_card_glow, 0, x + 0, y + 0);
}

draw_self();

if(upgrade_data == undefined)
{
	exit;
}

draw_set_font(fnt_medium);

draw_set_colour($41d7ff);
draw_set_alpha(1);

draw_text(x + 0, y + 185, string(upgrade_data[? "title"]) + "");

draw_set_colour(c_white);
draw_set_alpha(1);

draw_set_font(fnt_card_name);

draw_text(x + 0, y + -50, string(upgrade_data[? "weapon_name"]) + "");

draw_set_font(fnt_card_description);

draw_text(x + 0, y + +40, string(upgrade_data[? "description"]) + "");

draw_sprite(upgrade_data[? "icon"], 0, x + 0, y + -200);

// Set Draw Alpha
draw_set_alpha(roll_alpha);

// Draw Sprite
draw_sprite(spr_upgrade_hide, 0, x, y);

// Set Draw Alpha
draw_set_alpha(1);