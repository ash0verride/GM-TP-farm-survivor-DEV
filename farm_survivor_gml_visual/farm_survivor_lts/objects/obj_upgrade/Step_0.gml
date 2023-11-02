/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4B230D77
/// @DnDComment : // Reset mouse_over to false, this will hide$(13_10)// the glow effect on the card when drawing.
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "mouse_over"
mouse_over = false;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 538532B6
/// @DnDComment : // Stores how many gamepad count.
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "value" "gamepad_get_device_count()"
var _max_pads = gamepad_get_device_count();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 68F93F52
/// @DnDComment : // Checks when at least 1 gamepad is present.
/// @DnDArgument : "var" "_max_pads"
/// @DnDArgument : "op" "2"
if(_max_pads > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2C34555E
	/// @DnDComment : // Checks the gamepad is connected.
	/// @DnDParent : 68F93F52
	/// @DnDArgument : "expr" "gamepad_is_connected(0)"
	if(gamepad_is_connected(0))
	{
		/// @DnDAction : YoYo Games.Gamepad.Set_Gamepad_Axis_Deadzone
		/// @DnDVersion : 1
		/// @DnDHash : 2D7E0F18
		/// @DnDComment : // Sets the gamepads deadzone.
		/// @DnDParent : 2C34555E
		/// @DnDArgument : "deadzone" "0.5"
		gamepad_set_axis_deadzone(0, 0.5);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 059EE346
		/// @DnDComment : // Checks if the gamepads left stick is moved.
		/// @DnDParent : 2C34555E
		/// @DnDArgument : "expr" "gamepad_axis_value(0, gp_axislv) != 0 || gamepad_axis_value(0, gp_axislh) != 0"
		if(gamepad_axis_value(0, gp_axislv) != 0 || gamepad_axis_value(0, gp_axislh) != 0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 75A0A256
			/// @DnDComment : // Checks if the upgrade is on the left side.
			/// @DnDParent : 059EE346
			/// @DnDArgument : "var" "x"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "1920 / 2"
			if(x < 1920 / 2)
			{
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 6C6D633C
				/// @DnDComment : // Checks if the controller axis is pointing left.
				/// @DnDParent : 75A0A256
				/// @DnDArgument : "expr" "gamepad_axis_value(0, gp_axislh) < -0.5"
				if(gamepad_axis_value(0, gp_axislh) < -0.5)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 09B9E014
					/// @DnDComment : // Sets the upgrade to glow.$(13_10)// Tells the other upgrades a controller has been used.
					/// @DnDInput : 2
					/// @DnDParent : 6C6D633C
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "expr_1" "false"
					/// @DnDArgument : "var" "mouse_over"
					/// @DnDArgument : "var_1" "global.is_mouse"
					mouse_over = true;
					global.is_mouse = false;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 3424B67F
			/// @DnDParent : 059EE346
			else
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 45B5B857
				/// @DnDComment : // Checks if on the right side.
				/// @DnDParent : 3424B67F
				/// @DnDArgument : "var" "x"
				/// @DnDArgument : "op" "2"
				/// @DnDArgument : "value" "1920 / 2"
				if(x > 1920 / 2)
				{
					/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 62CE9D64
					/// @DnDComment : // Checks if the controller axis is pointing right.
					/// @DnDParent : 45B5B857
					/// @DnDArgument : "expr" "gamepad_axis_value(0, gp_axislh) > 0.5"
					if(gamepad_axis_value(0, gp_axislh) > 0.5)
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 69E1C006
						/// @DnDComment : // Sets the upgrade to glow.$(13_10)// Tells the other upgrades a controller has been used.
						/// @DnDInput : 2
						/// @DnDParent : 62CE9D64
						/// @DnDArgument : "expr" "true"
						/// @DnDArgument : "expr_1" "false"
						/// @DnDArgument : "var" "mouse_over"
						/// @DnDArgument : "var_1" "global.is_mouse"
						mouse_over = true;
						global.is_mouse = false;
					}
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 44D75E0B
				/// @DnDParent : 3424B67F
				else
				{
					/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 2E755621
					/// @DnDComment : // Checks if the controller is pointing up.
					/// @DnDParent : 44D75E0B
					/// @DnDArgument : "expr" "gamepad_axis_value(0, gp_axislv) < -0.5"
					if(gamepad_axis_value(0, gp_axislv) < -0.5)
					{
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 055A0C4C
						/// @DnDComment : // Checks if controller is not pointing too much left or right
						/// @DnDParent : 2E755621
						/// @DnDArgument : "expr" "gamepad_axis_value(0, gp_axislh) > -0.5 && gamepad_axis_value(0, gp_axislh) < 0.5"
						if(gamepad_axis_value(0, gp_axislh) > -0.5 && gamepad_axis_value(0, gp_axislh) < 0.5)
						{
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 0C0824DD
							/// @DnDComment : // Sets the upgrade to glow.$(13_10)// Tells the other upgrades a controller has been used.
							/// @DnDInput : 2
							/// @DnDParent : 055A0C4C
							/// @DnDArgument : "expr" "true"
							/// @DnDArgument : "expr_1" "false"
							/// @DnDArgument : "var" "mouse_over"
							/// @DnDArgument : "var_1" "global.is_mouse"
							mouse_over = true;
							global.is_mouse = false;
						}
					}
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 7AC6A129
		/// @DnDParent : 2C34555E
		else
		{
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 58BEB3EE
			/// @DnDComment : // Tells variable controller isn't being used.
			/// @DnDParent : 7AC6A129
			/// @DnDArgument : "value" "true"
			/// @DnDArgument : "var" "global.is_mouse"
			global.is_mouse = true;
		}
	
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 39B49A5D
		/// @DnDComment : // Checks if gamepad button has been pressed.
		/// @DnDParent : 2C34555E
		/// @DnDArgument : "btn" "gp_face1"
		var l39B49A5D_0 = 0;
		var l39B49A5D_1 = gp_face1;
		if(gamepad_is_connected(l39B49A5D_0) && gamepad_button_check_pressed(l39B49A5D_0, l39B49A5D_1))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7527A257
			/// @DnDComment : // Upgrade has detected a click.$(13_10)// Click was done with gamepad.
			/// @DnDInput : 2
			/// @DnDParent : 39B49A5D
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "expr_1" "true"
			/// @DnDArgument : "var" "is_clicked"
			/// @DnDArgument : "var_1" "gamepad_bypass"
			is_clicked = true;
			gamepad_bypass = true;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 728BD68E
	/// @DnDParent : 68F93F52
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 68ADFB3B
		/// @DnDComment : // Tells upgrades no controllers available.
		/// @DnDParent : 728BD68E
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "global.is_mouse"
		global.is_mouse = true;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 07F2F6D8
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 473535A4
	/// @DnDComment : // Tells upgrades no controllers available.
	/// @DnDParent : 07F2F6D8
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "global.is_mouse"
	global.is_mouse = true;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 304AB4EA
/// @DnDComment : // If the mouse is over this card...
/// @DnDInput : 5
/// @DnDArgument : "expr" "device_mouse_x_to_gui(0) > bbox_left"
/// @DnDArgument : "expr_1" "device_mouse_x_to_gui(0) < bbox_right"
/// @DnDArgument : "expr_2" "device_mouse_y_to_gui(0) > bbox_top"
/// @DnDArgument : "expr_3" "device_mouse_y_to_gui(0) < bbox_bottom"
/// @DnDArgument : "expr_4" "global.is_mouse"
if(device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom && global.is_mouse)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75F3010F
	/// @DnDComment : // Set mouse_over to true, to enable$(13_10)// the purple glow.
	/// @DnDParent : 304AB4EA
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "mouse_over"
	mouse_over = true;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 345CC37D
/// @DnDComment : // Checks if reveal effect if visible.
/// @DnDArgument : "var" "roll_alpha"
/// @DnDArgument : "op" "4"
if(roll_alpha >= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 153D1CD8
	/// @DnDComment : // Stops select highlight from occuring.
	/// @DnDParent : 345CC37D
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "mouse_over"
	mouse_over = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24084456
	/// @DnDComment : // Decreases life timer.
	/// @DnDParent : 345CC37D
	/// @DnDArgument : "expr" "-delta_time * 0.000001"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "roll_life"
	roll_life += -delta_time * 0.000001;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14C7D917
	/// @DnDComment : // Checks if life timer is finished
	/// @DnDParent : 345CC37D
	/// @DnDArgument : "var" "roll_life"
	/// @DnDArgument : "op" "3"
	if(roll_life <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3BF6AE84
		/// @DnDComment : // Reduces alpha of upgrade reveal.
		/// @DnDParent : 14C7D917
		/// @DnDArgument : "expr" "-delta_time * 0.000001 * 2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "roll_alpha"
		roll_alpha += -delta_time * 0.000001 * 2;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 299578BB
/// @DnDComment : // Checks if upgrade is highlighted.
/// @DnDArgument : "var" "mouse_over"
/// @DnDArgument : "value" "true"
if(mouse_over == true)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 2AB5FFF9
	/// @DnDComment : // If the left mouse button has been pressed...
	/// @DnDParent : 299578BB
	var l2AB5FFF9_0;
	l2AB5FFF9_0 = mouse_check_button_pressed(mb_left);
	if (l2AB5FFF9_0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 2573429A
		/// @DnDComment : // Play upgrade sound effect.
		/// @DnDParent : 2AB5FFF9
		/// @DnDArgument : "soundid" "snd_click"
		/// @DnDSaveInfo : "soundid" "snd_click"
		audio_play_sound(snd_click, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A1061BB
		/// @DnDComment : // Sets click state to true.
		/// @DnDParent : 2AB5FFF9
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "is_clicked"
		is_clicked = true;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5DB1030D
	/// @DnDComment : // Checks if mouse has been clicked on this button.
	/// @DnDParent : 299578BB
	/// @DnDArgument : "var" "is_clicked"
	/// @DnDArgument : "value" "true"
	if(is_clicked == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 154766E8
		/// @DnDComment : // Checks for mouse release or gamepad bypass.
		/// @DnDParent : 5DB1030D
		/// @DnDArgument : "expr" "mouse_check_button_released(mb_left) || gamepad_bypass"
		if(mouse_check_button_released(mb_left) || gamepad_bypass)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 2E77552E
			/// @DnDComment : // Play select sound.
			/// @DnDParent : 154766E8
			/// @DnDArgument : "soundid" "snd_ui_select"
			/// @DnDSaveInfo : "soundid" "snd_ui_select"
			audio_play_sound(snd_ui_select, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
			/// @DnDVersion : 1
			/// @DnDHash : 434250EC
			/// @DnDComment : // Set variables for upgrade stats.
			/// @DnDInput : 3
			/// @DnDParent : 154766E8
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
			/// @DnDComment : // Upgrade components stats.
			/// @DnDParent : 154766E8
			/// @DnDArgument : "expr" "_amount"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "_object[? _key]"
			_object[? _key] += _amount;
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2BCEA4E0
			/// @DnDComment : // Destroys upgrades.
			/// @DnDApplyTo : {obj_upgrade}
			/// @DnDParent : 154766E8
			with(obj_upgrade) instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2C50F7A0
			/// @DnDComment : // Destroys upgrade screen.
			/// @DnDApplyTo : obj_upgrade_screen
			/// @DnDParent : 154766E8
			with(obj_upgrade_screen) instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1E310C32
			/// @DnDComment : // Destroys reroll button.
			/// @DnDApplyTo : obj_button_reroll
			/// @DnDParent : 154766E8
			with(obj_button_reroll) instance_destroy();
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 359D27B7
			/// @DnDComment : // Plays music sound effect.
			/// @DnDParent : 154766E8
			/// @DnDArgument : "soundid" "snd_music_game"
			/// @DnDArgument : "loop" "1"
			/// @DnDSaveInfo : "soundid" "snd_music_game"
			audio_play_sound(snd_music_game, 0, 1, 1.0, undefined, 1.0);
		}
	}
}