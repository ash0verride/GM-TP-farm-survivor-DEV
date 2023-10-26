// If mouse is over this instance, adjusting for the GUI layer...
if(device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	// If left mouse button is pressed...
	if (mouse_check_button_pressed(mb_left))
	{
		// Play click sound effect.
		audio_play_sound(snd_click, 0, 0, 1.0, undefined, 1.0);
	}

	// If left mouse button is released...
	if (mouse_check_button_released(mb_left))
	{
		// Get current volume.
		var _volume = audio_get_master_gain(0);
	
		// Toggle volume on/off.
		audio_set_master_gain(0, !_volume);
	}
}