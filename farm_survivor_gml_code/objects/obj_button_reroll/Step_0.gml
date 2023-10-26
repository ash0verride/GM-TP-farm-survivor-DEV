if(device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	if (mouse_check_button_pressed(mb_left))
	{
		audio_play_sound(snd_click, 0, 0, 1.0, undefined, 1.0);
	}

	if (mouse_check_button_released(mb_left))
	{
		audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
	
		get_upgrades();
	
		instance_destroy();
	}
}