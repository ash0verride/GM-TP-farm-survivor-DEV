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
	/// @DnDHash : 6F781992
	/// @DnDComment : // Reduce target scale size.
	/// @DnDParent : 0E95FC62
	/// @DnDArgument : "expr" "0.95"
	/// @DnDArgument : "var" "target_scale"
	target_scale = 0.95;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 20C3A19A
	/// @DnDComment : // If left mouse button is pressed...
	/// @DnDParent : 0E95FC62
	var l20C3A19A_0;
	l20C3A19A_0 = mouse_check_button_pressed(mb_left);
	if (l20C3A19A_0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 09F44786
		/// @DnDComment : // Play click sound effect.
		/// @DnDParent : 20C3A19A
		/// @DnDArgument : "soundid" "snd_click"
		/// @DnDSaveInfo : "soundid" "snd_click"
		audio_play_sound(snd_click, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 41D4964A
		/// @DnDComment : // Sets click state to  true
		/// @DnDParent : 20C3A19A
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "is_clicked"
		is_clicked = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 16C4947D
		/// @DnDComment : // Reduce target scale size further.
		/// @DnDParent : 20C3A19A
		/// @DnDArgument : "expr" "0.9"
		/// @DnDArgument : "var" "target_scale"
		target_scale = 0.9;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B36BAFC
	/// @DnDComment : // Checks if mouse has been clicked on this button
	/// @DnDParent : 0E95FC62
	/// @DnDArgument : "var" "is_clicked"
	/// @DnDArgument : "value" "true"
	if(is_clicked == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 47A5260F
		/// @DnDComment : // Reduce target scale size further.
		/// @DnDParent : 5B36BAFC
		/// @DnDArgument : "expr" "0.9"
		/// @DnDArgument : "var" "target_scale"
		target_scale = 0.9;
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
		/// @DnDVersion : 1.1
		/// @DnDHash : 44C8EEA7
		/// @DnDComment : // If left mouse button is released...
		/// @DnDParent : 5B36BAFC
		var l44C8EEA7_0;
		l44C8EEA7_0 = mouse_check_button_released(mb_left);
		if (l44C8EEA7_0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 74F7E2B1
			/// @DnDComment : // Play click sound effect.
			/// @DnDParent : 44C8EEA7
			/// @DnDArgument : "soundid" "snd_ui_select"
			/// @DnDSaveInfo : "soundid" "snd_ui_select"
			audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 2F8CB091
			/// @DnDComment : // Calls function to generate new upgrades.
			/// @DnDParent : 44C8EEA7
			/// @DnDArgument : "function" "get_upgrades"
			get_upgrades();
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3E82D86E
			/// @DnDComment : // Destroys self.
			/// @DnDParent : 44C8EEA7
			instance_destroy();
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 044EAD39
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5DC17EA2
	/// @DnDComment : // Reset target scale size.
	/// @DnDParent : 044EAD39
	/// @DnDArgument : "expr" "1.0"
	/// @DnDArgument : "var" "target_scale"
	target_scale = 1.0;
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 26F33619
/// @DnDComment : // Stores how many gamepad count.
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "value" "gamepad_get_device_count()"
var _max_pads = gamepad_get_device_count();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E253B46
/// @DnDComment : // Checks when at least 1 gamepad is present.
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "op" "2"
if(_max_pads > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 76E7B708
	/// @DnDComment : // Checks the gamepad is connected.
	/// @DnDParent : 0E253B46
	/// @DnDArgument : "expr" "gamepad_is_connected(0)"
	if(gamepad_is_connected(0))
	{
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 7F763734
		/// @DnDComment : // Checks if gamepad button has been pressed.
		/// @DnDParent : 76E7B708
		var l7F763734_0 = 0;
		var l7F763734_1 = gp_face4;
		if(gamepad_is_connected(l7F763734_0) && gamepad_button_check_pressed(l7F763734_0, l7F763734_1))
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 6101A8DB
			/// @DnDComment : // Play click sound effect.
			/// @DnDParent : 7F763734
			/// @DnDArgument : "soundid" "snd_ui_select"
			/// @DnDSaveInfo : "soundid" "snd_ui_select"
			audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 31BA6B89
			/// @DnDComment : // Calls function to generate new upgrades.
			/// @DnDParent : 7F763734
			/// @DnDArgument : "function" "get_upgrades"
			get_upgrades();
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4520EB98
			/// @DnDComment : // Destroys self.
			/// @DnDParent : 7F763734
			instance_destroy();
		}
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4D96526A
/// @DnDComment : // Lerp scale values to target scale.
/// @DnDInput : 2
/// @DnDArgument : "expr" "lerp(image_xscale, target_scale, 0.1)"
/// @DnDArgument : "expr_1" "lerp(image_yscale, target_scale, 0.1)"
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "var_1" "image_yscale"
image_xscale = lerp(image_xscale, target_scale, 0.1);
image_yscale = lerp(image_yscale, target_scale, 0.1);