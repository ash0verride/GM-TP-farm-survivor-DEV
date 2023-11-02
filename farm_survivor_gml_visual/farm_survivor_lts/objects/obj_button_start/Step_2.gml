/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
/// @DnDVersion : 1.1
/// @DnDHash : 3C752ECA
/// @DnDComment : // If left mouse button is released...
var l3C752ECA_0;
l3C752ECA_0 = mouse_check_button_released(mb_left);
if (l3C752ECA_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 747931B3
	/// @DnDComment : // Sets the mouse to unclick.
	/// @DnDParent : 3C752ECA
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "is_clicked"
	is_clicked = false;
}