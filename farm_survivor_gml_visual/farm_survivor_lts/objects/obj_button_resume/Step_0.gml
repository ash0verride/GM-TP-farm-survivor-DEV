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
	/// @DnDHash : 6FC02D0D
	/// @DnDParent : 0E95FC62
	var l6FC02D0D_0;
	l6FC02D0D_0 = mouse_check_button_pressed(mb_left);
	if (l6FC02D0D_0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 7E5A73E1
		/// @DnDParent : 6FC02D0D
		/// @DnDArgument : "soundid" "snd_click"
		/// @DnDSaveInfo : "soundid" "snd_click"
		audio_play_sound(snd_click, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 041D61DC
		/// @DnDComment : // Sets click state to  true
		/// @DnDParent : 6FC02D0D
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "is_clicked"
		is_clicked = true;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5CC4D35E
	/// @DnDComment : Checks if mouse has been clicked on this button
	/// @DnDParent : 0E95FC62
	/// @DnDArgument : "var" "is_clicked"
	/// @DnDArgument : "value" "true"
	if(is_clicked == true)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
		/// @DnDVersion : 1.1
		/// @DnDHash : 44C8EEA7
		/// @DnDComment : If left mouse button is released.
		/// @DnDParent : 5CC4D35E
		var l44C8EEA7_0;
		l44C8EEA7_0 = mouse_check_button_released(mb_left);
		if (l44C8EEA7_0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 4180B094
			/// @DnDParent : 44C8EEA7
			/// @DnDArgument : "soundid" "snd_ui_select"
			/// @DnDSaveInfo : "soundid" "snd_ui_select"
			audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5BCBE65C
			/// @DnDApplyTo : obj_pause_screen
			/// @DnDParent : 44C8EEA7
			with(obj_pause_screen) instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3CFAD2EC
			/// @DnDApplyTo : obj_button_exit
			/// @DnDParent : 44C8EEA7
			with(obj_button_exit) instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5A9E8435
			/// @DnDApplyTo : obj_button_resume
			/// @DnDParent : 44C8EEA7
			with(obj_button_resume) instance_destroy();
		}
	}
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 2A8C7466
/// @DnDComment : // Stores how many gamepad count
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "value" "gamepad_get_device_count()"
var _max_pads = gamepad_get_device_count();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 695C62FA
/// @DnDComment : // Checks when at least 1 gamepad is present
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "op" "2"
if(_max_pads > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 77BF89F5
	/// @DnDComment : // Checks the gamepad is connected
	/// @DnDParent : 695C62FA
	/// @DnDArgument : "expr" "gamepad_is_connected(0)"
	if(gamepad_is_connected(0))
	{
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 23D6CE7F
		/// @DnDParent : 77BF89F5
		/// @DnDArgument : "btn" "gp_start"
		var l23D6CE7F_0 = 0;
		var l23D6CE7F_1 = gp_start;
		if(gamepad_is_connected(l23D6CE7F_0) && gamepad_button_check_pressed(l23D6CE7F_0, l23D6CE7F_1))
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 1DEFBA54
			/// @DnDParent : 23D6CE7F
			/// @DnDArgument : "soundid" "snd_ui_select"
			/// @DnDSaveInfo : "soundid" "snd_ui_select"
			audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4160984A
			/// @DnDApplyTo : obj_pause_screen
			/// @DnDParent : 23D6CE7F
			with(obj_pause_screen) instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4CD10311
			/// @DnDApplyTo : obj_button_exit
			/// @DnDParent : 23D6CE7F
			with(obj_button_exit) instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 06420858
			/// @DnDApplyTo : obj_button_resume
			/// @DnDParent : 23D6CE7F
			with(obj_button_resume) instance_destroy();
		
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 5964D6CE
			/// @DnDParent : 23D6CE7F
			exit;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2EE04AB6
/// @DnDArgument : "expr" "has_released && keyboard_check(vk_escape)"
if(has_released && keyboard_check(vk_escape))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 0164CA3F
	/// @DnDParent : 2EE04AB6
	/// @DnDArgument : "soundid" "snd_ui_select"
	/// @DnDSaveInfo : "soundid" "snd_ui_select"
	audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 27723CD0
	/// @DnDApplyTo : obj_pause_screen
	/// @DnDParent : 2EE04AB6
	with(obj_pause_screen) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2964FC60
	/// @DnDApplyTo : obj_button_exit
	/// @DnDParent : 2EE04AB6
	with(obj_button_exit) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 564B9231
	/// @DnDApplyTo : obj_button_resume
	/// @DnDParent : 2EE04AB6
	with(obj_button_resume) instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 029327D5
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 418B0A02
	/// @DnDParent : 029327D5
	/// @DnDArgument : "expr" "keyboard_check(vk_escape)"
	/// @DnDArgument : "not" "1"
	if(!(keyboard_check(vk_escape)))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5EC1495D
		/// @DnDParent : 418B0A02
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "has_released"
		has_released = true;
	}
}