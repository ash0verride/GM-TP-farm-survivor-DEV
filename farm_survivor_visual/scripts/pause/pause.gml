/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 4AD85F51
/// @DnDComment : // Not paused by default.
/// @DnDArgument : "value" "false"
/// @DnDArgument : "var" "paused"
global.paused = false;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1F3CCEA4
/// @DnDComment : // Declare pause function.
/// @DnDArgument : "funcName" "pause"
function pause() 
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 2AAFA676
	/// @DnDComment : // Pause the game.
	/// @DnDParent : 1F3CCEA4
	/// @DnDArgument : "value" "true"
	/// @DnDArgument : "var" "paused"
	global.paused = true;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 4E7D9F1E
	/// @DnDComment : // Apply the following code to all instances...
	/// @DnDApplyTo : all
	/// @DnDParent : 1F3CCEA4
	with(all) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 372A22A0
		/// @DnDComment : // Save the instance's speed.
		/// @DnDParent : 4E7D9F1E
		/// @DnDArgument : "expr" "speed"
		/// @DnDArgument : "var" "paused_speed"
		paused_speed = speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 350E5E00
		/// @DnDComment : // Save the animation speed.
		/// @DnDParent : 4E7D9F1E
		/// @DnDArgument : "expr" "image_speed"
		/// @DnDArgument : "var" "paused_animation"
		paused_animation = image_speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6465B106
		/// @DnDComment : // Stop moving the instance.
		/// @DnDParent : 4E7D9F1E
		/// @DnDArgument : "var" "speed"
		speed = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 125D1186
		/// @DnDComment : // Stop animation.
		/// @DnDParent : 4E7D9F1E
		/// @DnDArgument : "var" "image_speed"
		image_speed = 0;
	}
}