/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5DB9E288
/// @DnDInput : 4
/// @DnDArgument : "expr" "instance_exists(obj_pause_screen)"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "expr_1" "instance_exists(obj_upgrade_screen)"
/// @DnDArgument : "not_1" "1"
/// @DnDArgument : "expr_2" "instance_exists(obj_game_over)"
/// @DnDArgument : "not_2" "1"
/// @DnDArgument : "expr_3" "instance_exists(obj_template_complete)"
/// @DnDArgument : "not_3" "1"
if(!(instance_exists(obj_pause_screen)) && !(instance_exists(obj_upgrade_screen)) && !(instance_exists(obj_game_over)) && !(instance_exists(obj_template_complete)))
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1EAE054E
	/// @DnDComment : // Stores how many gamepad count
	/// @DnDParent : 5DB9E288
	/// @DnDArgument : "var" "_max_pads"
	/// @DnDArgument : "value" "gamepad_get_device_count()"
	var _max_pads = gamepad_get_device_count();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62861E9D
	/// @DnDComment : // Checks when at least 1 gamepad is present
	/// @DnDParent : 5DB9E288
	/// @DnDArgument : "var" "_max_pads"
	/// @DnDArgument : "op" "2"
	if(_max_pads > 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 2AF229C3
		/// @DnDComment : // Checks the gamepad is connected
		/// @DnDParent : 62861E9D
		/// @DnDArgument : "expr" "gamepad_is_connected(0)"
		if(gamepad_is_connected(0))
		{
			/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
			/// @DnDVersion : 1.1
			/// @DnDHash : 69904264
			/// @DnDParent : 2AF229C3
			/// @DnDArgument : "btn" "gp_start"
			var l69904264_0 = 0;
			var l69904264_1 = gp_start;
			if(gamepad_is_connected(l69904264_0) && gamepad_button_check_pressed(l69904264_0, l69904264_1))
			{
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 55F337AE
				/// @DnDParent : 69904264
				/// @DnDArgument : "soundid" "snd_ui_select"
				/// @DnDSaveInfo : "soundid" "snd_ui_select"
				audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 6EAF2BF8
				/// @DnDComment : Create pause screen.
				/// @DnDParent : 69904264
				/// @DnDArgument : "xpos" "1920 / 2"
				/// @DnDArgument : "ypos" "1080 / 2"
				/// @DnDArgument : "objectid" "obj_pause_screen"
				/// @DnDArgument : "layer" ""UpgradeScreen""
				/// @DnDSaveInfo : "objectid" "obj_pause_screen"
				instance_create_layer(1920 / 2, 1080 / 2, "UpgradeScreen", obj_pause_screen);
			
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 5472D7FE
				/// @DnDComment : Call the pause function.
				/// @DnDParent : 69904264
				/// @DnDArgument : "function" "pause"
				pause();
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 63AE0577
				/// @DnDParent : 69904264
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "var" "has_released"
				has_released = false;
			
				/// @DnDAction : YoYo Games.Common.Exit_Event
				/// @DnDVersion : 1
				/// @DnDHash : 523F65D2
				/// @DnDParent : 69904264
				exit;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 78C80C48
	/// @DnDParent : 5DB9E288
	/// @DnDArgument : "expr" "has_released && keyboard_check(vk_escape)"
	if(has_released && keyboard_check(vk_escape))
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 44A863C0
		/// @DnDParent : 78C80C48
		/// @DnDArgument : "soundid" "snd_ui_select"
		/// @DnDSaveInfo : "soundid" "snd_ui_select"
		audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5F076E5C
		/// @DnDComment : Create pause screen.
		/// @DnDParent : 78C80C48
		/// @DnDArgument : "xpos" "1920 / 2"
		/// @DnDArgument : "ypos" "1080 / 2"
		/// @DnDArgument : "objectid" "obj_pause_screen"
		/// @DnDArgument : "layer" ""UpgradeScreen""
		/// @DnDSaveInfo : "objectid" "obj_pause_screen"
		instance_create_layer(1920 / 2, 1080 / 2, "UpgradeScreen", obj_pause_screen);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 7B3E6B88
		/// @DnDComment : Call the pause function.
		/// @DnDParent : 78C80C48
		/// @DnDArgument : "function" "pause"
		pause();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 490F6039
		/// @DnDParent : 78C80C48
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "has_released"
		has_released = false;
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 1B2F449D
		/// @DnDParent : 78C80C48
		exit;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 33AC5238
	/// @DnDParent : 5DB9E288
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 03219A97
		/// @DnDParent : 33AC5238
		/// @DnDArgument : "expr" "keyboard_check(vk_escape)"
		/// @DnDArgument : "not" "1"
		if(!(keyboard_check(vk_escape)))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 75ACC106
			/// @DnDParent : 03219A97
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "has_released"
			has_released = true;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0E95FC62
	/// @DnDComment : If mouse is over this instance, adjusting for the GUI layer...
	/// @DnDInput : 4
	/// @DnDParent : 5DB9E288
	/// @DnDArgument : "expr" "device_mouse_x_to_gui(0) > bbox_left"
	/// @DnDArgument : "expr_1" "device_mouse_x_to_gui(0) < bbox_right"
	/// @DnDArgument : "expr_2" "device_mouse_y_to_gui(0) > bbox_top"
	/// @DnDArgument : "expr_3" "device_mouse_y_to_gui(0) < bbox_bottom"
	if(device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 669B137E
		/// @DnDParent : 0E95FC62
		var l669B137E_0;
		l669B137E_0 = mouse_check_button_pressed(mb_left);
		if (l669B137E_0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 458B7699
			/// @DnDParent : 669B137E
			/// @DnDArgument : "soundid" "snd_click"
			/// @DnDSaveInfo : "soundid" "snd_click"
			audio_play_sound(snd_click, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3334636C
			/// @DnDComment : // Sets click state to  true
			/// @DnDParent : 669B137E
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "is_clicked"
			is_clicked = true;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3B261D28
		/// @DnDComment : Checks if mouse has been clicked on this button
		/// @DnDParent : 0E95FC62
		/// @DnDArgument : "var" "is_clicked"
		/// @DnDArgument : "value" "true"
		if(is_clicked == true)
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
			/// @DnDVersion : 1.1
			/// @DnDHash : 44C8EEA7
			/// @DnDComment : If left mouse button is released...
			/// @DnDParent : 3B261D28
			var l44C8EEA7_0;
			l44C8EEA7_0 = mouse_check_button_released(mb_left);
			if (l44C8EEA7_0)
			{
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 2E5508C7
				/// @DnDParent : 44C8EEA7
				/// @DnDArgument : "soundid" "snd_ui_select"
				/// @DnDSaveInfo : "soundid" "snd_ui_select"
				audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 406C270B
				/// @DnDComment : Create pause screen.
				/// @DnDParent : 44C8EEA7
				/// @DnDArgument : "xpos" "1920 / 2"
				/// @DnDArgument : "ypos" "1080 / 2"
				/// @DnDArgument : "objectid" "obj_pause_screen"
				/// @DnDArgument : "layer" ""UpgradeScreen""
				/// @DnDSaveInfo : "objectid" "obj_pause_screen"
				instance_create_layer(1920 / 2, 1080 / 2, "UpgradeScreen", obj_pause_screen);
			
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 6624DE72
				/// @DnDComment : Call the pause function.
				/// @DnDParent : 44C8EEA7
				/// @DnDArgument : "function" "pause"
				pause();
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0EF2474B
	/// @DnDParent : 5DB9E288
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6DCD8D67
		/// @DnDParent : 0EF2474B
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "is_clicked"
		is_clicked = false;
	}
}