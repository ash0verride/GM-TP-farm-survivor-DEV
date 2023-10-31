/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0E95FC62
/// @DnDInput : 4
/// @DnDArgument : "expr" "device_mouse_x_to_gui(0) > bbox_left"
/// @DnDArgument : "expr_1" "device_mouse_x_to_gui(0) < bbox_right"
/// @DnDArgument : "expr_2" "device_mouse_y_to_gui(0) > bbox_top"
/// @DnDArgument : "expr_3" "device_mouse_y_to_gui(0) < bbox_bottom"
if(device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 34765232
	/// @DnDParent : 0E95FC62
	var l34765232_0;
	l34765232_0 = mouse_check_button_pressed(mb_left);
	if (l34765232_0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 394F8A8B
		/// @DnDParent : 34765232
		/// @DnDArgument : "soundid" "snd_click"
		/// @DnDSaveInfo : "soundid" "snd_click"
		audio_play_sound(snd_click, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 40884DBA
		/// @DnDComment : // Sets click state to  true
		/// @DnDParent : 34765232
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "is_clicked"
		is_clicked = true;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6DA1AF40
	/// @DnDComment : Checks if mouse has been clicked on this button
	/// @DnDParent : 0E95FC62
	/// @DnDArgument : "var" "is_clicked"
	/// @DnDArgument : "value" "true"
	if(is_clicked == true)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
		/// @DnDVersion : 1.1
		/// @DnDHash : 7066DB78
		/// @DnDComment : If left mouse button is released...
		/// @DnDParent : 6DA1AF40
		var l7066DB78_0;
		l7066DB78_0 = mouse_check_button_released(mb_left);
		if (l7066DB78_0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 59ED46E6
			/// @DnDParent : 7066DB78
			/// @DnDArgument : "soundid" "snd_ui_select"
			/// @DnDSaveInfo : "soundid" "snd_ui_select"
			audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 19AA32AD
			/// @DnDParent : 7066DB78
			/// @DnDArgument : "room" "rm_game"
			/// @DnDSaveInfo : "room" "rm_game"
			room_goto(rm_game);
		}
	}
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 4E140B42
/// @DnDComment : // Stores how many gamepad count
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "value" "gamepad_get_device_count()"
var _max_pads = gamepad_get_device_count();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2698F14E
/// @DnDComment : // Checks when at least 1 gamepad is present
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "op" "2"
if(_max_pads > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5F928F51
	/// @DnDComment : // Checks the gamepad is connected
	/// @DnDParent : 2698F14E
	/// @DnDArgument : "expr" "gamepad_is_connected(0)"
	if(gamepad_is_connected(0))
	{
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 01BEF815
		/// @DnDParent : 5F928F51
		/// @DnDArgument : "btn" "gp_start"
		var l01BEF815_0 = 0;
		var l01BEF815_1 = gp_start;
		if(gamepad_is_connected(l01BEF815_0) && gamepad_button_check_pressed(l01BEF815_0, l01BEF815_1))
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 5F224D90
			/// @DnDParent : 01BEF815
			/// @DnDArgument : "soundid" "snd_ui_select"
			/// @DnDSaveInfo : "soundid" "snd_ui_select"
			audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 07E81FFD
			/// @DnDParent : 01BEF815
			/// @DnDArgument : "room" "rm_game"
			/// @DnDSaveInfo : "room" "rm_game"
			room_goto(rm_game);
		
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 25F3FCCD
			/// @DnDParent : 01BEF815
			exit;
		}
	}
}