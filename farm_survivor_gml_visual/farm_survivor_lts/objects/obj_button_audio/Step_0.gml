/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0E95FC62
/// @DnDComment : // If mouse is over this instance, adjusting for the GUI layer...
/// @DnDInput : 4
/// @DnDArgument : "expr" "device_mouse_x_to_gui(0) > bbox_left"
/// @DnDArgument : "expr_1" "device_mouse_x_to_gui(0) < bbox_right"
/// @DnDArgument : "expr_2" "device_mouse_y_to_gui(0) > bbox_top"
/// @DnDArgument : "expr_3" "device_mouse_y_to_gui(0) < bbox_bottom"
if(device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B9B0D30
	/// @DnDComment : // Reduce target scale size.
	/// @DnDParent : 0E95FC62
	/// @DnDArgument : "expr" "0.95"
	/// @DnDArgument : "var" "target_scale"
	target_scale = 0.95;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 16C046C8
	/// @DnDComment : // If left mouse button is pressed...
	/// @DnDParent : 0E95FC62
	var l16C046C8_0;
	l16C046C8_0 = mouse_check_button_pressed(mb_left);
	if (l16C046C8_0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 1B5F5CCA
		/// @DnDComment : // Play click sound effect.
		/// @DnDParent : 16C046C8
		/// @DnDArgument : "soundid" "snd_click"
		/// @DnDSaveInfo : "soundid" "snd_click"
		audio_play_sound(snd_click, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3DE2EFBE
		/// @DnDComment : // Sets click state to true.
		/// @DnDParent : 16C046C8
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "is_clicked"
		is_clicked = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 70A91B41
		/// @DnDComment : // Reduce target scale size further.
		/// @DnDParent : 16C046C8
		/// @DnDArgument : "expr" "0.9"
		/// @DnDArgument : "var" "target_scale"
		target_scale = 0.9;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66D4B417
	/// @DnDComment : // Checks if mouse has been clicked on this button.
	/// @DnDParent : 0E95FC62
	/// @DnDArgument : "var" "is_clicked"
	/// @DnDArgument : "value" "true"
	if(is_clicked == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4A782E27
		/// @DnDComment : // Reduce target scale size further.
		/// @DnDParent : 66D4B417
		/// @DnDArgument : "expr" "0.9"
		/// @DnDArgument : "var" "target_scale"
		target_scale = 0.9;
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
		/// @DnDVersion : 1.1
		/// @DnDHash : 4EE2E4E6
		/// @DnDComment : // If left mouse button is released...
		/// @DnDParent : 66D4B417
		var l4EE2E4E6_0;
		l4EE2E4E6_0 = mouse_check_button_released(mb_left);
		if (l4EE2E4E6_0)
		{
			/// @DnDAction : YoYo Games.Audio.Audio_Get_Master_Volume
			/// @DnDVersion : 1
			/// @DnDHash : 5A5B7CCC
			/// @DnDComment : // Get current volume.
			/// @DnDParent : 4EE2E4E6
			/// @DnDArgument : "var" "_volume"
			/// @DnDArgument : "var_temp" "1"
			var _volume = audio_get_master_gain(0);
		
			/// @DnDAction : YoYo Games.Audio.Audo_Set_Master_Volume
			/// @DnDVersion : 1
			/// @DnDHash : 7F19094C
			/// @DnDComment : // Toggle volume on/off.
			/// @DnDParent : 4EE2E4E6
			/// @DnDArgument : "volume" "!_volume"
			audio_set_master_gain(0, !_volume);
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 768958BC
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 223BBD88
	/// @DnDComment : // Reset target scale size.
	/// @DnDParent : 768958BC
	/// @DnDArgument : "expr" "1.0"
	/// @DnDArgument : "var" "target_scale"
	target_scale = 1.0;
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 302D5922
/// @DnDComment : // Stores how many gamepad count.
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "value" "gamepad_get_device_count()"
var _max_pads = gamepad_get_device_count();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2ADB7DCB
/// @DnDComment : // Checks when at least 1 gamepad is present.
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "op" "2"
if(_max_pads > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0239D7F9
	/// @DnDComment : // Checks the gamepad is connected.
	/// @DnDParent : 2ADB7DCB
	/// @DnDArgument : "expr" "gamepad_is_connected(0)"
	if(gamepad_is_connected(0))
	{
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 12FEE2D1
		/// @DnDComment : // Checks if gamepad button has been pressed.
		/// @DnDParent : 0239D7F9
		var l12FEE2D1_0 = 0;
		var l12FEE2D1_1 = gp_face4;
		if(gamepad_is_connected(l12FEE2D1_0) && gamepad_button_check_pressed(l12FEE2D1_0, l12FEE2D1_1))
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 31F8E57C
			/// @DnDComment : // Play click sound effect.
			/// @DnDParent : 12FEE2D1
			/// @DnDArgument : "soundid" "snd_click"
			/// @DnDSaveInfo : "soundid" "snd_click"
			audio_play_sound(snd_click, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Audio.Audio_Get_Master_Volume
			/// @DnDVersion : 1
			/// @DnDHash : 4059D581
			/// @DnDComment : // Get current volume.
			/// @DnDParent : 12FEE2D1
			/// @DnDArgument : "var" "_volume"
			/// @DnDArgument : "var_temp" "1"
			var _volume = audio_get_master_gain(0);
		
			/// @DnDAction : YoYo Games.Audio.Audo_Set_Master_Volume
			/// @DnDVersion : 1
			/// @DnDHash : 0E396620
			/// @DnDComment : // Toggle volume on/off.
			/// @DnDParent : 12FEE2D1
			/// @DnDArgument : "volume" "!_volume"
			audio_set_master_gain(0, !_volume);
		}
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 66407AFF
/// @DnDComment : // Lerp scale values to target scale.
/// @DnDInput : 2
/// @DnDArgument : "expr" "lerp(image_xscale, target_scale, 0.1)"
/// @DnDArgument : "expr_1" "lerp(image_yscale, target_scale, 0.1)"
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "var_1" "image_yscale"
image_xscale = lerp(image_xscale, target_scale, 0.1);
image_yscale = lerp(image_yscale, target_scale, 0.1);