/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7C7DFCCF
/// @DnDComment : // If the nearest enemy is within 250 pixels...
/// @DnDArgument : "expr" "nearest_distance < 250"
if(nearest_distance < 250)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 317CF417
	/// @DnDComment : // Reset the cooldown for this weapon.
	/// @DnDParent : 7C7DFCCF
	/// @DnDArgument : "steps" "max(global.swipe[? "attack_speed"], 1)"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, max(global.swipe[? "attack_speed"], 1));

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 769894A2
	/// @DnDComment : // If this weapon is unlocked...
	/// @DnDParent : 7C7DFCCF
	/// @DnDArgument : "expr" "global.swipe[? "unlocked"]"
	if(global.swipe[? "unlocked"])
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 38E30DE0
		/// @DnDComment : // Execute the function that handles this weapon.
		/// @DnDParent : 769894A2
		/// @DnDArgument : "function" "swipe_attack"
		swipe_attack();
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 33ED32C7
/// @DnDComment : // The nearest enemy is too far away, but we don't want to fully reset the cooldown...
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5E827895
	/// @DnDComment : // Set the cooldown to test again next frame.
	/// @DnDParent : 33ED32C7
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 1);
}