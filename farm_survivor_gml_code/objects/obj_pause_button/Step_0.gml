if(!(instance_exists(obj_pause_screen)) && !(instance_exists(obj_upgrade_screen)) && !(instance_exists(obj_game_over)) && !(instance_exists(obj_template_complete)))
{
	// If mouse is over this instance, adjusting for the GUI layer...
	if(device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
	{
		if (mouse_check_button_pressed(mb_left))
		{
			audio_play_sound(snd_click, 0, 0, 1.0, undefined, 1.0);
			
			// Sets click state to true
			is_clicked = true;
		}
	
		// Checks if mouse has been clicked on this button
		if (is_clicked)
		{
			// If left mouse button is released.
			if (mouse_check_button_released(mb_left))
			{
				audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
		
				// Create pause screen.
				instance_create_layer(1920 / 2, 1080 / 2, "UpgradeScreen", obj_pause_screen);
		
				// Call the pause function.
				pause();
			}
		}
	}
	else
	{
		// Sets click state to false
		is_clicked = false;	
	}
}