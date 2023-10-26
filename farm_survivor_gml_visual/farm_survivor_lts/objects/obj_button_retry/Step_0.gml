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
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
	/// @DnDVersion : 1.1
	/// @DnDHash : 44C8EEA7
	/// @DnDComment : And the left mouse button is clicked...
	/// @DnDParent : 0E95FC62
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