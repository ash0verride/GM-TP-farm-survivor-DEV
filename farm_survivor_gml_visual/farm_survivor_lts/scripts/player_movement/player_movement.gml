/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7BCF09EF
/// @DnDComment : // Create variables for the mouse anchor position.
/// @DnDInput : 2
/// @DnDArgument : "var" "mouse_anchor_x"
/// @DnDArgument : "var_1" "mouse_anchor_y"
global.mouse_anchor_x = 0;
global.mouse_anchor_y = 0;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0E475938
/// @DnDComment : // Declare player movement script.
/// @DnDArgument : "funcName" "player_movement"
function player_movement() 
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6ADB4B0F
	/// @DnDComment : // Set speed to 0.$(13_10)// We increase it again below.
	/// @DnDParent : 0E475938
	speed = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 521F526A
	/// @DnDComment : // If the left mouse button is pressed...
	/// @DnDParent : 0E475938
	var l521F526A_0;
	l521F526A_0 = mouse_check_button_pressed(mb_left);
	if (l521F526A_0)
	{
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 321FAAA4
		/// @DnDComment : // Set the anchor point to the current mouse position.
		/// @DnDInput : 2
		/// @DnDParent : 521F526A
		/// @DnDArgument : "value" "device_mouse_x_to_gui(0)"
		/// @DnDArgument : "value_1" "device_mouse_y_to_gui(0)"
		/// @DnDArgument : "var" "mouse_anchor_x"
		/// @DnDArgument : "var_1" "mouse_anchor_y"
		global.mouse_anchor_x = device_mouse_x_to_gui(0);
		global.mouse_anchor_y = device_mouse_y_to_gui(0);
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
	/// @DnDVersion : 1.1
	/// @DnDHash : 21A5A03A
	/// @DnDComment : // If the left mouse button is held down...
	/// @DnDParent : 0E475938
	var l21A5A03A_0;
	l21A5A03A_0 = mouse_check_button(mb_left);
	if (l21A5A03A_0)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 266BAED4
		/// @DnDComment : // If the pause button exists.
		/// @DnDParent : 21A5A03A
		/// @DnDArgument : "obj" "obj_pause_button"
		/// @DnDSaveInfo : "obj" "obj_pause_button"
		var l266BAED4_0 = false;
		l266BAED4_0 = instance_exists(obj_pause_button);
		if(l266BAED4_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3DDAFDE2
			/// @DnDComment : // If the pause button is not clicked.
			/// @DnDParent : 266BAED4
			/// @DnDArgument : "var" "obj_pause_button.is_clicked"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "value" "true"
			if(!(obj_pause_button.is_clicked == true))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 79BB788B
				/// @DnDComment : // Set horizontal and vertical speeds based$(13_10)// on the difference between the current mouse$(13_10)// poisition and the anchor position.
				/// @DnDInput : 2
				/// @DnDParent : 3DDAFDE2
				/// @DnDArgument : "expr" "(device_mouse_x_to_gui(0) - global.mouse_anchor_x) * 0.1"
				/// @DnDArgument : "expr_1" "(device_mouse_y_to_gui(0) - global.mouse_anchor_y) * 0.1"
				/// @DnDArgument : "var" "hspeed"
				/// @DnDArgument : "var_1" "vspeed"
				hspeed = (device_mouse_x_to_gui(0) - global.mouse_anchor_x) * 0.1;
				vspeed = (device_mouse_y_to_gui(0) - global.mouse_anchor_y) * 0.1;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 208E5356
	/// @DnDComment : // If left mouse button is NOT held down...
	/// @DnDParent : 0E475938
	else
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 463C6C2D
		/// @DnDComment : // Stores how many gamepad count.
		/// @DnDParent : 208E5356
		/// @DnDArgument : "var" "_max_pads"
		/// @DnDArgument : "value" "gamepad_get_device_count()"
		var _max_pads = gamepad_get_device_count();
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4213AF36
		/// @DnDComment : // Checks when at least 1 gamepad is present.
		/// @DnDParent : 208E5356
		/// @DnDArgument : "var" "_max_pads"
		/// @DnDArgument : "op" "2"
		if(_max_pads > 0)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 737E6E33
			/// @DnDComment : // Checks the gamepad is connected.
			/// @DnDParent : 4213AF36
			/// @DnDArgument : "expr" "gamepad_is_connected(0)"
			if(gamepad_is_connected(0))
			{
				/// @DnDAction : YoYo Games.Gamepad.Set_Gamepad_Axis_Deadzone
				/// @DnDVersion : 1
				/// @DnDHash : 1836B039
				/// @DnDComment : // Sets the gamepads deadzone.
				/// @DnDParent : 737E6E33
				/// @DnDArgument : "deadzone" "0.1"
				gamepad_set_axis_deadzone(0, 0.1);
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 2520829C
				/// @DnDComment : // Checks if the gamepads right stick is moved.
				/// @DnDParent : 737E6E33
				/// @DnDArgument : "expr" "gamepad_axis_value(0, gp_axislv) != 0 || gamepad_axis_value(0, gp_axislh) != 0"
				if(gamepad_axis_value(0, gp_axislv) != 0 || gamepad_axis_value(0, gp_axislh) != 0)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 6A542F6A
					/// @DnDComment : // Adds movement speed to player based on left stick input.
					/// @DnDInput : 2
					/// @DnDParent : 2520829C
					/// @DnDArgument : "expr" "10 * gamepad_axis_value(0, gp_axislv)"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "expr_1" "10 * gamepad_axis_value(0, gp_axislh)"
					/// @DnDArgument : "expr_relative_1" "1"
					/// @DnDArgument : "var" "vspeed"
					/// @DnDArgument : "var_1" "hspeed"
					vspeed += 10 * gamepad_axis_value(0, gp_axislv);
					hspeed += 10 * gamepad_axis_value(0, gp_axislh);
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 122ACD6C
		/// @DnDComment : // If the W key is down...
		/// @DnDParent : 208E5356
		/// @DnDArgument : "key" "ord("W")"
		var l122ACD6C_0;
		l122ACD6C_0 = keyboard_check(ord("W"));
		if (l122ACD6C_0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 54652BC8
			/// @DnDComment : // Add -10 to vertical speed.
			/// @DnDParent : 122ACD6C
			/// @DnDArgument : "speed" "-10"
			/// @DnDArgument : "speed_relative" "1"
			/// @DnDArgument : "type" "2"
			vspeed += -10;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 25C9EE9A
		/// @DnDComment : // If the S key is down...
		/// @DnDParent : 208E5356
		/// @DnDArgument : "key" "ord("S")"
		var l25C9EE9A_0;
		l25C9EE9A_0 = keyboard_check(ord("S"));
		if (l25C9EE9A_0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 7E4CA5D3
			/// @DnDComment : // Add 10 to vertical speed.
			/// @DnDParent : 25C9EE9A
			/// @DnDArgument : "speed" "10"
			/// @DnDArgument : "speed_relative" "1"
			/// @DnDArgument : "type" "2"
			vspeed += 10;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 7D1863BD
		/// @DnDComment : // If the A key is down...
		/// @DnDParent : 208E5356
		/// @DnDArgument : "key" "ord("A")"
		var l7D1863BD_0;
		l7D1863BD_0 = keyboard_check(ord("A"));
		if (l7D1863BD_0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 36C14C1E
			/// @DnDComment : // Add -10 to horizontal speed.
			/// @DnDParent : 7D1863BD
			/// @DnDArgument : "speed" "-10"
			/// @DnDArgument : "speed_relative" "1"
			/// @DnDArgument : "type" "1"
			hspeed += -10;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 0BDBC0E7
		/// @DnDComment : // If the D key is down...
		/// @DnDParent : 208E5356
		/// @DnDArgument : "key" "ord("D")"
		var l0BDBC0E7_0;
		l0BDBC0E7_0 = keyboard_check(ord("D"));
		if (l0BDBC0E7_0)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 15E3FB5F
			/// @DnDComment : // Add 10 to horizontal speed.
			/// @DnDParent : 0BDBC0E7
			/// @DnDArgument : "speed" "10"
			/// @DnDArgument : "speed_relative" "1"
			/// @DnDArgument : "type" "1"
			hspeed += 10;
		}
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 4C7E7AB0
	/// @DnDComment : // Set the direction from the direction$(13_10)// from 0, 0 to hspeed, vspeed.
	/// @DnDParent : 0E475938
	/// @DnDArgument : "x" "hspeed"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "vspeed"
	/// @DnDArgument : "y_relative" "1"
	direction = point_direction(x, y, x + hspeed, y + vspeed);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7E420B1B
	/// @DnDComment : // Set speed to a fixed value in the current direction.$(13_10)// This essentially normalizes the curent hspeed and vspeed values.
	/// @DnDParent : 0E475938
	/// @DnDArgument : "speed" "min(speed, 10)"
	speed = min(speed, 10);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 49E9CAF7
	/// @DnDComment : // If hspeed does not equal 0...
	/// @DnDParent : 0E475938
	/// @DnDArgument : "expr" "hspeed != 0"
	if(hspeed != 0)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 59989122
		/// @DnDComment : // Flip sprite horizontally based on hspeed.
		/// @DnDParent : 49E9CAF7
		/// @DnDArgument : "xscale" "1 * -sign(hspeed)"
		image_xscale = 1 * -sign(hspeed);
		image_yscale = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 51035777
	/// @DnDComment : // If sprite is not the hit sprite,$(13_10)// meaning the hero isn't currently being hit...
	/// @DnDParent : 0E475938
	/// @DnDArgument : "expr" "sprite_index != spr_hero_hit"
	if(sprite_index != spr_hero_hit)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 5B14AB65
		/// @DnDComment : // If speed is over 0...
		/// @DnDParent : 51035777
		/// @DnDArgument : "expr" "speed > 0"
		if(speed > 0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 49661C81
			/// @DnDComment : // Set sprite to the running sprite.
			/// @DnDParent : 5B14AB65
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_hero_run"
			/// @DnDSaveInfo : "spriteind" "spr_hero_run"
			sprite_index = spr_hero_run;
			image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 216DE218
		/// @DnDComment : // Else speed is 0...
		/// @DnDParent : 51035777
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 62ACA727
			/// @DnDComment : // Set sprite to the idle sprite.
			/// @DnDParent : 216DE218
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_hero_idle"
			/// @DnDSaveInfo : "spriteind" "spr_hero_idle"
			sprite_index = spr_hero_idle;
			image_index += 0;
		}
	}
}