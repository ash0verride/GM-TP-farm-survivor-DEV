/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3DC5E04F
/// @DnDComment : If the nearest enemy is within 1000 pixels...
/// @DnDArgument : "expr" "nearest_distance < 1000"
if(nearest_distance < 1000)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 17E121EB
	/// @DnDComment : Reset the cooldown for this weapon.
	/// @DnDParent : 3DC5E04F
	/// @DnDArgument : "steps" "max(global.shooting[? "attack_speed"], 1)"
	alarm_set(0, max(global.shooting[? "attack_speed"], 1));

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 015C4028
	/// @DnDComment : If this weapon is unlocked...
	/// @DnDParent : 3DC5E04F
	/// @DnDArgument : "expr" "global.shooting[? "unlocked"]"
	if(global.shooting[? "unlocked"])
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 38E30DE0
		/// @DnDComment : Execute the function to handle this weapon.
		/// @DnDParent : 015C4028
		/// @DnDArgument : "function" "shooting_attack"
		shooting_attack();
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6DDE01D0
/// @DnDComment : The nearest enemy is too far away, but we don't want to fully reset the cooldown...
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 317CF417
	/// @DnDComment : Set the cooldown to test again next frame.
	/// @DnDParent : 6DDE01D0
	/// @DnDArgument : "steps" "1"
	alarm_set(0, 1);
}