/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 29049616
/// @DnDComment : // If the pause screen is open...
/// @DnDArgument : "obj" "obj_pause_screen"
/// @DnDSaveInfo : "obj" "obj_pause_screen"
var l29049616_0 = false;
l29049616_0 = instance_exists(obj_pause_screen);
if(l29049616_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 2ED44854
	/// @DnDComment : // Exit event.
	/// @DnDParent : 29049616
	exit;
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 153E49D1
/// @DnDComment : // If the game over screen is open...
/// @DnDArgument : "obj" "obj_game_over"
/// @DnDSaveInfo : "obj" "obj_game_over"
var l153E49D1_0 = false;
l153E49D1_0 = instance_exists(obj_game_over);
if(l153E49D1_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 579805E0
	/// @DnDComment : // Exit event.
	/// @DnDParent : 153E49D1
	exit;
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 57142059
/// @DnDComment : // If the end screen is open...
/// @DnDArgument : "obj" "obj_template_complete"
/// @DnDSaveInfo : "obj" "obj_template_complete"
var l57142059_0 = false;
l57142059_0 = instance_exists(obj_template_complete);
if(l57142059_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 27EC6040
	/// @DnDComment : // Exit event.
	/// @DnDParent : 57142059
	exit;
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 05E7C731
/// @DnDComment : // If the upgrade screen is open...
/// @DnDArgument : "obj" "obj_upgrade"
/// @DnDSaveInfo : "obj" "obj_upgrade"
var l05E7C731_0 = false;
l05E7C731_0 = instance_exists(obj_upgrade);
if(l05E7C731_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 0818F4CC
	/// @DnDComment : // Exit event.
	/// @DnDParent : 05E7C731
	exit;
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0491B7AC
/// @DnDComment : // If the pause button exists.
/// @DnDArgument : "obj" "obj_pause_button"
/// @DnDSaveInfo : "obj" "obj_pause_button"
var l0491B7AC_0 = false;
l0491B7AC_0 = instance_exists(obj_pause_button);
if(l0491B7AC_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51E973C3
	/// @DnDComment : // If the pause button is clicked.
	/// @DnDParent : 0491B7AC
	/// @DnDArgument : "var" "obj_pause_button.is_clicked"
	/// @DnDArgument : "value" "true"
	if(obj_pause_button.is_clicked == true)
	{
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 648F5189
		/// @DnDComment : // Exit event.
		/// @DnDParent : 51E973C3
		exit;
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 7BE7FDC7
/// @DnDComment : // If the left mouse button is NOT pressed...
/// @DnDArgument : "not" "1"
var l7BE7FDC7_0;
l7BE7FDC7_0 = mouse_check_button(mb_left);
if (!l7BE7FDC7_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 041158AD
	/// @DnDComment : // Exit event.
	/// @DnDParent : 7BE7FDC7
	exit;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 3A314E36
/// @DnDComment : // Draw the large joytick "back" sprite at the anchor point.
/// @DnDArgument : "x" "global.mouse_anchor_x"
/// @DnDArgument : "y" "global.mouse_anchor_y"
/// @DnDArgument : "sprite" "spr_joystick_big"
/// @DnDSaveInfo : "sprite" "spr_joystick_big"
draw_sprite(spr_joystick_big, 0, global.mouse_anchor_x, global.mouse_anchor_y);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 5CEECF33
/// @DnDComment : // Get the distance from the anchor point$(13_10)// to the current mouse position.
/// @DnDArgument : "var" "_dist"
/// @DnDArgument : "value" "min(point_distance(global.mouse_anchor_x, global.mouse_anchor_y, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0)), 100)"
var _dist = min(point_distance(global.mouse_anchor_x, global.mouse_anchor_y, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0)), 100);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 2C9FBA18
/// @DnDComment : // Draw the joystick "thumb".
/// @DnDArgument : "x" "global.mouse_anchor_x + lengthdir_x(_dist, direction)"
/// @DnDArgument : "y" "global.mouse_anchor_y + lengthdir_y(_dist, direction)"
/// @DnDArgument : "sprite" "spr_joystick_small"
/// @DnDSaveInfo : "sprite" "spr_joystick_small"
draw_sprite(spr_joystick_small, 0, global.mouse_anchor_x + lengthdir_x(_dist, direction), global.mouse_anchor_y + lengthdir_y(_dist, direction));