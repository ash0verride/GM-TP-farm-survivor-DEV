/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0E95FC62
/// @DnDComment : If mouse is over this button (adjusted for GUI layer)...
/// @DnDInput : 4
/// @DnDArgument : "expr" "device_mouse_x_to_gui(0) > bbox_left"
/// @DnDArgument : "expr_1" "device_mouse_x_to_gui(0) < bbox_right"
/// @DnDArgument : "expr_2" "device_mouse_y_to_gui(0) > bbox_top"
/// @DnDArgument : "expr_3" "device_mouse_y_to_gui(0) < bbox_bottom"
if(device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 744A8EE7
	/// @DnDParent : 0E95FC62
	var l744A8EE7_0;
	l744A8EE7_0 = mouse_check_button_pressed(mb_left);
	if (l744A8EE7_0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 7DACD68C
		/// @DnDParent : 744A8EE7
		/// @DnDArgument : "soundid" "snd_click"
		/// @DnDSaveInfo : "soundid" "snd_click"
		audio_play_sound(snd_click, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 62B17D68
		/// @DnDComment : // Sets click state to  true
		/// @DnDParent : 744A8EE7
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "is_clicked"
		is_clicked = true;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E7335FE
	/// @DnDComment : Checks if mouse has been clicked on this button
	/// @DnDParent : 0E95FC62
	/// @DnDArgument : "var" "is_clicked"
	/// @DnDArgument : "value" "true"
	if(is_clicked == true)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
		/// @DnDVersion : 1.1
		/// @DnDHash : 44C8EEA7
		/// @DnDComment : And the left mouse button is clicked...
		/// @DnDParent : 4E7335FE
		var l44C8EEA7_0;
		l44C8EEA7_0 = mouse_check_button_released(mb_left);
		if (l44C8EEA7_0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 3A983011
			/// @DnDParent : 44C8EEA7
			/// @DnDArgument : "soundid" "snd_ui_select"
			/// @DnDSaveInfo : "soundid" "snd_ui_select"
			audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Rooms.Restart_Room
			/// @DnDVersion : 1
			/// @DnDHash : 5496C7CB
			/// @DnDComment : Restart this room.$(13_10)Restarting the game.
			/// @DnDParent : 44C8EEA7
			room_restart();
		}
	}
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 48709632
/// @DnDComment : // Stores how many gamepad count
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "value" "gamepad_get_device_count()"
var _max_pads = gamepad_get_device_count();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5E3773ED
/// @DnDComment : // Checks when at least 1 gamepad is present
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "op" "2"
if(_max_pads > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 69C239EE
	/// @DnDComment : // Checks the gamepad is connected
	/// @DnDParent : 5E3773ED
	/// @DnDArgument : "expr" "gamepad_is_connected(0)"
	if(gamepad_is_connected(0))
	{
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 7ADAA172
		/// @DnDParent : 69C239EE
		/// @DnDArgument : "btn" "gp_start"
		var l7ADAA172_0 = 0;
		var l7ADAA172_1 = gp_start;
		if(gamepad_is_connected(l7ADAA172_0) && gamepad_button_check_pressed(l7ADAA172_0, l7ADAA172_1))
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 2ED493AC
			/// @DnDParent : 7ADAA172
			/// @DnDArgument : "soundid" "snd_ui_select"
			/// @DnDSaveInfo : "soundid" "snd_ui_select"
			audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Rooms.Restart_Room
			/// @DnDVersion : 1
			/// @DnDHash : 17FA4746
			/// @DnDParent : 7ADAA172
			room_restart();
		}
	}
}