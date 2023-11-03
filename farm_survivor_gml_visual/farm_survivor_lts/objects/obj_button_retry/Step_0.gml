/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0E95FC62
/// @DnDComment : // If mouse is over this button (adjusted for GUI layer)...
/// @DnDInput : 4
/// @DnDArgument : "expr" "device_mouse_x_to_gui(0) > bbox_left"
/// @DnDArgument : "expr_1" "device_mouse_x_to_gui(0) < bbox_right"
/// @DnDArgument : "expr_2" "device_mouse_y_to_gui(0) > bbox_top"
/// @DnDArgument : "expr_3" "device_mouse_y_to_gui(0) < bbox_bottom"
if(device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 440EBC94
	/// @DnDComment : // Reduce target scale size.
	/// @DnDParent : 0E95FC62
	/// @DnDArgument : "expr" "0.95"
	/// @DnDArgument : "var" "target_scale"
	target_scale = 0.95;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 744A8EE7
	/// @DnDComment : // If left mouse button is pressed...
	/// @DnDParent : 0E95FC62
	var l744A8EE7_0;
	l744A8EE7_0 = mouse_check_button_pressed(mb_left);
	if (l744A8EE7_0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 7DACD68C
		/// @DnDComment : // Play click sound effect.
		/// @DnDParent : 744A8EE7
		/// @DnDArgument : "soundid" "snd_click"
		/// @DnDSaveInfo : "soundid" "snd_click"
		audio_play_sound(snd_click, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 62B17D68
		/// @DnDComment : // Sets click state to true.
		/// @DnDParent : 744A8EE7
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "is_clicked"
		is_clicked = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7996A114
		/// @DnDComment : // Reduce target scale size further.
		/// @DnDParent : 744A8EE7
		/// @DnDArgument : "expr" "0.9"
		/// @DnDArgument : "var" "target_scale"
		target_scale = 0.9;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E7335FE
	/// @DnDComment : // Checks if mouse has been clicked on this button.
	/// @DnDParent : 0E95FC62
	/// @DnDArgument : "var" "is_clicked"
	/// @DnDArgument : "value" "true"
	if(is_clicked == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 677A4B08
		/// @DnDComment : // Reduce target scale size further.
		/// @DnDParent : 4E7335FE
		/// @DnDArgument : "expr" "0.9"
		/// @DnDArgument : "var" "target_scale"
		target_scale = 0.9;
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
		/// @DnDVersion : 1.1
		/// @DnDHash : 44C8EEA7
		/// @DnDComment : // And the left mouse button is clicked...
		/// @DnDParent : 4E7335FE
		var l44C8EEA7_0;
		l44C8EEA7_0 = mouse_check_button_released(mb_left);
		if (l44C8EEA7_0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 3A983011
			/// @DnDComment : // Play click sound effect.
			/// @DnDParent : 44C8EEA7
			/// @DnDArgument : "soundid" "snd_ui_select"
			/// @DnDSaveInfo : "soundid" "snd_ui_select"
			audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Rooms.Restart_Room
			/// @DnDVersion : 1
			/// @DnDHash : 5496C7CB
			/// @DnDComment : // Restart this room.$(13_10)// Restarting the game.
			/// @DnDParent : 44C8EEA7
			room_restart();
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5C0E61E2
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E82A1AA
	/// @DnDComment : // Reset target scale size.
	/// @DnDParent : 5C0E61E2
	/// @DnDArgument : "expr" "1.0"
	/// @DnDArgument : "var" "target_scale"
	target_scale = 1.0;
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 48709632
/// @DnDComment : // Stores how many gamepad count.
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "value" "gamepad_get_device_count()"
var _max_pads = gamepad_get_device_count();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5E3773ED
/// @DnDComment : // Checks when at least 1 gamepad is present.
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "op" "2"
if(_max_pads > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 69C239EE
	/// @DnDComment : // Checks the gamepad is connected.
	/// @DnDParent : 5E3773ED
	/// @DnDArgument : "expr" "gamepad_is_connected(0)"
	if(gamepad_is_connected(0))
	{
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 7ADAA172
		/// @DnDComment : // Checks if gamepad button has been pressed.
		/// @DnDParent : 69C239EE
		/// @DnDArgument : "btn" "gp_start"
		var l7ADAA172_0 = 0;
		var l7ADAA172_1 = gp_start;
		if(gamepad_is_connected(l7ADAA172_0) && gamepad_button_check_pressed(l7ADAA172_0, l7ADAA172_1))
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 2ED493AC
			/// @DnDComment : // Play click sound effect.
			/// @DnDParent : 7ADAA172
			/// @DnDArgument : "soundid" "snd_ui_select"
			/// @DnDSaveInfo : "soundid" "snd_ui_select"
			audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Rooms.Restart_Room
			/// @DnDVersion : 1
			/// @DnDHash : 17FA4746
			/// @DnDComment : // Restart this room.$(13_10)// Restarting the game.
			/// @DnDParent : 7ADAA172
			room_restart();
		}
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 147EA5CB
/// @DnDComment : // Lerp scale values to target scale.
/// @DnDInput : 2
/// @DnDArgument : "expr" "lerp(image_xscale, target_scale, 0.1)"
/// @DnDArgument : "expr_1" "lerp(image_yscale, target_scale, 0.1)"
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "var_1" "image_yscale"
image_xscale = lerp(image_xscale, target_scale, 0.1);
image_yscale = lerp(image_yscale, target_scale, 0.1);