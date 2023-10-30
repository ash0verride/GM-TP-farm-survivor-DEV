/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0E95FC62
/// @DnDComment : If mouse is over this instance, adjusting for the GUI layer...
/// @DnDInput : 4
/// @DnDArgument : "expr" "device_mouse_x_to_gui(0) > bbox_left"
/// @DnDArgument : "expr_1" "device_mouse_x_to_gui(0) < bbox_right"
/// @DnDArgument : "expr_2" "device_mouse_y_to_gui(0) > bbox_top"
/// @DnDArgument : "expr_3" "device_mouse_y_to_gui(0) < bbox_bottom"
if(device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 16C046C8
	/// @DnDComment : If left mouse button is pressed...
	/// @DnDParent : 0E95FC62
	var l16C046C8_0;
	l16C046C8_0 = mouse_check_button_pressed(mb_left);
	if (l16C046C8_0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 1B5F5CCA
		/// @DnDComment : Play click sound effect.
		/// @DnDParent : 16C046C8
		/// @DnDArgument : "soundid" "snd_click"
		/// @DnDSaveInfo : "soundid" "snd_click"
		audio_play_sound(snd_click, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3DE2EFBE
		/// @DnDComment : // Sets click state to  true
		/// @DnDParent : 16C046C8
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "is_clicked"
		is_clicked = true;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66D4B417
	/// @DnDComment : Checks if mouse has been clicked on this button
	/// @DnDParent : 0E95FC62
	/// @DnDArgument : "var" "is_clicked"
	/// @DnDArgument : "value" "true"
	if(is_clicked == true)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
		/// @DnDVersion : 1.1
		/// @DnDHash : 4EE2E4E6
		/// @DnDComment : If left mouse button is released...
		/// @DnDParent : 66D4B417
		var l4EE2E4E6_0;
		l4EE2E4E6_0 = mouse_check_button_released(mb_left);
		if (l4EE2E4E6_0)
		{
			/// @DnDAction : YoYo Games.Audio.Audio_Get_Master_Volume
			/// @DnDVersion : 1
			/// @DnDHash : 5A5B7CCC
			/// @DnDComment : Get current volume.
			/// @DnDParent : 4EE2E4E6
			/// @DnDArgument : "var" "_volume"
			/// @DnDArgument : "var_temp" "1"
			var _volume = audio_get_master_gain(0);
		
			/// @DnDAction : YoYo Games.Audio.Audo_Set_Master_Volume
			/// @DnDVersion : 1
			/// @DnDHash : 7F19094C
			/// @DnDComment : Toggle volume on/off.
			/// @DnDParent : 4EE2E4E6
			/// @DnDArgument : "volume" "!_volume"
			audio_set_master_gain(0, !_volume);
		}
	}
}