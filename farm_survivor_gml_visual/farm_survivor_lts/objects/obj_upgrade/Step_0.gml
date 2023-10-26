/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4B230D77
/// @DnDComment : Reset mouse_over to false, this will hide$(13_10)the glow effect on the card when drawing.
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "mouse_over"
mouse_over = false;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 304AB4EA
/// @DnDComment : If the mouse is over this card...
/// @DnDInput : 4
/// @DnDArgument : "expr" "device_mouse_x_to_gui(0) > bbox_left"
/// @DnDArgument : "expr_1" "device_mouse_x_to_gui(0) < bbox_right"
/// @DnDArgument : "expr_2" "device_mouse_y_to_gui(0) > bbox_top"
/// @DnDArgument : "expr_3" "device_mouse_y_to_gui(0) < bbox_bottom"
if(device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75F3010F
	/// @DnDComment : Set mouse_over to true, to enable$(13_10)the purple glow.
	/// @DnDParent : 304AB4EA
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "mouse_over"
	mouse_over = true;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 2AB5FFF9
	/// @DnDComment : If the left mouse button has been pressed...
	/// @DnDParent : 304AB4EA
	var l2AB5FFF9_0;
	l2AB5FFF9_0 = mouse_check_button_pressed(mb_left);
	if (l2AB5FFF9_0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 2573429A
		/// @DnDParent : 2AB5FFF9
		/// @DnDArgument : "soundid" "snd_click"
		/// @DnDSaveInfo : "soundid" "snd_click"
		audio_play_sound(snd_click, 0, 0, 1.0, undefined, 1.0);
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
	/// @DnDVersion : 1.1
	/// @DnDHash : 70C82C81
	/// @DnDParent : 304AB4EA
	var l70C82C81_0;
	l70C82C81_0 = mouse_check_button_released(mb_left);
	if (l70C82C81_0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 2E77552E
		/// @DnDParent : 70C82C81
		/// @DnDArgument : "soundid" "snd_ui_select"
		/// @DnDSaveInfo : "soundid" "snd_ui_select"
		audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
		/// @DnDVersion : 1
		/// @DnDHash : 434250EC
		/// @DnDInput : 3
		/// @DnDParent : 70C82C81
		/// @DnDArgument : "assignee" "_object"
		/// @DnDArgument : "assignee_temp" "1"
		/// @DnDArgument : "assignee_1" "_key"
		/// @DnDArgument : "assignee_temp_1" "1"
		/// @DnDArgument : "assignee_2" "_amount"
		/// @DnDArgument : "assignee_temp_2" "1"
		/// @DnDArgument : "var" "upgrade_data"
		/// @DnDArgument : "key" ""object""
		/// @DnDArgument : "key_1" ""key""
		/// @DnDArgument : "key_2" ""amount""
		var _object = ds_map_find_value(upgrade_data, "object");
		var _key = ds_map_find_value(upgrade_data, "key");
		var _amount = ds_map_find_value(upgrade_data, "amount");
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 47502E68
		/// @DnDParent : 70C82C81
		/// @DnDArgument : "expr" "_amount"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "_object[? _key]"
		_object[? _key] += _amount;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2BCEA4E0
		/// @DnDApplyTo : {obj_upgrade}
		/// @DnDParent : 70C82C81
		with(obj_upgrade) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2C50F7A0
		/// @DnDApplyTo : obj_upgrade_screen
		/// @DnDParent : 70C82C81
		with(obj_upgrade_screen) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1E310C32
		/// @DnDApplyTo : obj_button_reroll
		/// @DnDParent : 70C82C81
		with(obj_button_reroll) instance_destroy();
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 359D27B7
		/// @DnDParent : 70C82C81
		/// @DnDArgument : "soundid" "snd_music_game"
		/// @DnDArgument : "loop" "1"
		/// @DnDSaveInfo : "soundid" "snd_music_game"
		audio_play_sound(snd_music_game, 0, 1, 1.0, undefined, 1.0);
	}
}