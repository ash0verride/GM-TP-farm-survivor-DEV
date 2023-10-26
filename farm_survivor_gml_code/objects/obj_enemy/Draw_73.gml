// If our healthbar timer is over 0...
// (note that we also decrement it with --)
if(show_healthbar-- > 0)
{
	// Draw the back of the healthbar.
	draw_sprite_ext(spr_healthbar_back, 0, x + -50, y + 5, 100 / 29, 26 / 26, 0, c_white, 1);

	// Draw the filling of the healthbar.
	draw_sprite_ext(spr_healthbar_fill_red, 0, x + -50 + 4, y + 5 + 4, ((100 - 8) / 23) * (hitpoints / hitpoints_max), (26 - 8) / 20, 0, c_white, 1);
}