// Reset mouse_over to false, this will hide
// the glow effect on the card when drawing.
mouse_over = false;

// If the mouse is over this card...
if(device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	// Set mouse_over to true, to enable
	// the purple glow.
	mouse_over = true;

	// If the left mouse button has been pressed...
	if (mouse_check_button_pressed(mb_left))
	{
		audio_play_sound(snd_click, 0, 0, 1.0, undefined, 1.0);
		
		// Sets click state to true
		is_clicked = true;
	}
	
	// Checks if mouse has been clicked on this button
	if (is_clicked)
	{
		if (mouse_check_button_released(mb_left))
		{
			audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
	
			var _object = ds_map_find_value(upgrade_data, "object");
			var _key = ds_map_find_value(upgrade_data, "key");
			var _amount = ds_map_find_value(upgrade_data, "amount");
	
			_object[? _key] += _amount;
	
			with(obj_upgrade) instance_destroy();
	
			with(obj_upgrade_screen) instance_destroy();
	
			with(obj_button_reroll) instance_destroy();
	
			audio_play_sound(snd_music_game, 0, 1, 1.0, undefined, 1.0);
		}
	}
}