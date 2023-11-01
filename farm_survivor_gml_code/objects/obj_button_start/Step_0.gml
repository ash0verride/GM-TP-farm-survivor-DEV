if(device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	target_scale = 0.9;
	
	if (mouse_check_button_pressed(mb_left))
	{
		audio_play_sound(snd_click, 0, 0, 1.0, undefined, 1.0);
		
		// Sets click state to true
		is_clicked = true;
	}
	
	// Checks if mouse has been clicked on this button
	if (is_clicked)
	{
		
		
		if ( mouse_check_button_released(mb_left))
		{
			audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
	
			room_goto(rm_game);
		}
	}
}
else
{
	target_scale = 1.0;	
}

// Stores how many gamepad count
var _max_pads = gamepad_get_device_count();

// Checks when at least 1 gamepad is present
if (_max_pads > 0)
{
	// Checks the gamepad is connected
	if (gamepad_is_connected(0))
	{
		if (gamepad_button_check_pressed(0, gp_start))
		{
			audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
	
			room_goto(rm_game);
		
			exit;
		}
	}
}

image_xscale = lerp(image_xscale, target_scale, 0.9);
image_yscale = lerp(image_yscale, target_scale, 0.9);