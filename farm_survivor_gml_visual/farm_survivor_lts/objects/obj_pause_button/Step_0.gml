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
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
		/// @DnDVersion : 1.1
		/// @DnDHash : 44C8EEA7
		/// @DnDComment : If left mouse button is released...
		/// @DnDParent : 0E95FC62
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