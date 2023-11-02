if (global.paused)
{
	draw_sprite(sprite_index, 0, x + 0, y + 0);
}
else
{
	// Draw our sprite.
	// Note that we add the sine of current_time
	// to create a bobbing/floating effect.
	draw_sprite(sprite_index, 0, x + 0, y + sin(current_time / 100) * 10);
}