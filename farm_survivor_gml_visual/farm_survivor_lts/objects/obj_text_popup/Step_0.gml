/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 49A127C6
/// @DnDComment : Reduce lifetime.
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "lifetime"
lifetime += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2BE11855
/// @DnDComment : If lifetime has reduced to zero...
/// @DnDArgument : "var" "lifetime"
/// @DnDArgument : "op" "3"
if(lifetime <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 37639E0E
	/// @DnDComment : Destroy the text popup.
	/// @DnDParent : 2BE11855
	instance_destroy();
}