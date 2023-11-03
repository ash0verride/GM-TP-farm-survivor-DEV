/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 13D7A740
/// @DnDComment : // If the nearest enemy is within 300 pixels...
/// @DnDArgument : "expr" "nearest_distance < 300"
if(nearest_distance < 300)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 317CF417
	/// @DnDComment : // Reset the cooldown for this weapon.
	/// @DnDParent : 13D7A740
	/// @DnDArgument : "steps" "max(global.trail[? "attack_speed"], 1)"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, max(global.trail[? "attack_speed"], 1));

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 00ACDA30
	/// @DnDComment : // If this weapon is unlocked...
	/// @DnDParent : 13D7A740
	/// @DnDArgument : "expr" "global.trail[? "unlocked"]"
	if(global.trail[? "unlocked"])
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 38E30DE0
		/// @DnDComment : // Execute the function that handles the weapon.
		/// @DnDParent : 00ACDA30
		/// @DnDArgument : "function" "attack_trail"
		attack_trail();
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 18B90478
/// @DnDComment : // The nearest enemy is too far away, but we don't want to fully reset the cooldown...
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 475BC2E1
	/// @DnDComment : // So set the cooldown to test again next frame.
	/// @DnDParent : 18B90478
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 1);
}