/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5899337D
/// @DnDComment : // Checks if the pause screen doesn't exist.
/// @DnDArgument : "expr" "instance_exists(obj_pause_screen)"
/// @DnDArgument : "not" "1"
if(!(instance_exists(obj_pause_screen)))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 49A127C6
	/// @DnDComment : // Reduce lifetime.
	/// @DnDParent : 5899337D
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "lifetime"
	lifetime += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2BE11855
	/// @DnDComment : // If lifetime has reduced to zero...
	/// @DnDParent : 5899337D
	/// @DnDArgument : "var" "lifetime"
	/// @DnDArgument : "op" "3"
	if(lifetime <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4194FC96
		/// @DnDComment : // Reduce the image alpha.
		/// @DnDParent : 2BE11855
		/// @DnDArgument : "expr" "-delta_time * 0.000001 * 2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "image_alpha"
		image_alpha += -delta_time * 0.000001 * 2;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 76980FF9
		/// @DnDComment : // Checks if the image alpha is less than or equal to zero.
		/// @DnDParent : 2BE11855
		/// @DnDArgument : "var" "image_alpha"
		/// @DnDArgument : "op" "3"
		if(image_alpha <= 0)
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 37639E0E
			/// @DnDComment : Destroy the text popup.
			/// @DnDParent : 76980FF9
			instance_destroy();
		}
	}
}