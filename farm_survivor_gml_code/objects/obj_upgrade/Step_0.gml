// Reset mouse_over to false, this will hide
// the glow effect on the card when drawing.
mouse_over = false;

// Stores how many gamepad count
var _max_pads = gamepad_get_device_count();

// Checks when at least 1 gamepad is present
if (_max_pads > 0)
{
	// Checks the gamepad is connected
	if (gamepad_is_connected(0))
	{
		// Sets the gamepads deadzone
		gamepad_set_axis_deadzone(0, 0.5);
		
		// Checks if the gamepads left stick is moved
		if (gamepad_axis_value(0, gp_axislv) != 0 || gamepad_axis_value(0, gp_axislh) != 0)
		{
			if (x < 1920 / 2)
			{
				if (gamepad_axis_value(0, gp_axislh) < -0.5)
				{
					mouse_over = true;
					global.is_mouse = false;	
				}
			}
			else if (x > 1920 / 2)
			{
				if (gamepad_axis_value(0, gp_axislh) > 0.5)
				{
					mouse_over = true;
					global.is_mouse = false;	
				}
			}
			else
			{
				if (gamepad_axis_value(0, gp_axislv) < -0.5)
				{
					if (gamepad_axis_value(0, gp_axislh) > -0.5 && gamepad_axis_value(0, gp_axislh) < 0.5)
					{
						mouse_over = true;
						global.is_mouse = false;	
					}
				}
			}
		}
		else
		{
			global.is_mouse = true;	
		}
		
		if (gamepad_button_check_pressed(0, gp_face1))
		{
			is_clicked = true;
			gamepad_bypass = true;
		}
	}
	else
	{
		global.is_mouse = true;	
	}
}
else
{
	global.is_mouse = true;	
}

// If the mouse is over this card...
if(device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom && global.is_mouse)
{
	// Set mouse_over to true, to enable
	// the purple glow.
	mouse_over = true;
}

if (roll_alpha >= 0)
{
	mouse_over = false;
	
	roll_life -= delta_time * 0.000001;
	
	if (roll_life <= 0)
	{
		roll_alpha -= delta_time * 0.000001 * 2;
	}
}

if (mouse_over)
{
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
		if (mouse_check_button_released(mb_left) || gamepad_bypass)
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