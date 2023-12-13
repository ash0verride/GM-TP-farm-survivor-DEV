/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1B63CFE9
/// @DnDComment : // Checks if game is not paused.
/// @DnDArgument : "var" "global.paused"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(global.paused == true))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A5A09C3
	/// @DnDComment : // Reduces the image alpha.
	/// @DnDParent : 1B63CFE9
	/// @DnDArgument : "expr" "-delta_time * 0.000001 * 4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_alpha"
	image_alpha += -delta_time * 0.000001 * 4;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4E743A68
/// @DnDComment : // Checks if the bullet is visable
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "3"
if(image_alpha <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 344AD7E3
	/// @DnDComment : // Destroy this instance when it leaves the room bounds.
	/// @DnDParent : 4E743A68
	instance_destroy();
}