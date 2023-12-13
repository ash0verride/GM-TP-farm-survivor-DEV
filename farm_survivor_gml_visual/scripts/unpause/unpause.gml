/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1F3CCEA4
/// @DnDArgument : "funcName" "unpause"
function unpause() 
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 2AAFA676
	/// @DnDParent : 1F3CCEA4
	/// @DnDArgument : "value" "false"
	/// @DnDArgument : "var" "paused"
	global.paused = false;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 4E7D9F1E
	/// @DnDComment : // Apply to all instances.
	/// @DnDApplyTo : all
	/// @DnDParent : 1F3CCEA4
	with(all) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6465B106
		/// @DnDComment : // Set speed to saved speed.
		/// @DnDParent : 4E7D9F1E
		/// @DnDArgument : "expr" "paused_speed"
		/// @DnDArgument : "var" "speed"
		speed = paused_speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1C1103AD
		/// @DnDComment : // Set animation speed to saved value.
		/// @DnDParent : 4E7D9F1E
		/// @DnDArgument : "expr" "paused_animation"
		/// @DnDArgument : "var" "image_speed"
		image_speed = paused_animation;
	}
}