/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 50D848F6
/// @DnDComment : // Declare a function to set up the next wave.
/// @DnDArgument : "funcName" "next_wave"
function next_wave() 
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 758CD4CA
	/// @DnDComment : // Subtract experience goal from current experience.$(13_10)// Basically this is the cost of levelling up.
	/// @DnDParent : 50D848F6
	/// @DnDArgument : "value" "-global.xp_goal"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "xp"
	global.xp += -global.xp_goal;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 63890D93
	/// @DnDComment : // Increase the experience goal for the next wave.
	/// @DnDParent : 50D848F6
	/// @DnDArgument : "value" "floor(global.xp_goal * 1.2)"
	/// @DnDArgument : "var" "xp_goal"
	global.xp_goal = floor(global.xp_goal * 1.2);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 6909F12E
	/// @DnDComment : // Decrease the time it takes to spawn enemies.
	/// @DnDParent : 50D848F6
	/// @DnDArgument : "value" "-3"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "enemy_spawn_speed"
	global.enemy_spawn_speed += -3;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 7E792D03
	/// @DnDComment : // Increase enemy health bonus, making all enemies slightly harder to kill each wave.
	/// @DnDParent : 50D848F6
	/// @DnDArgument : "value" "global.enemy_health_bonus * 1.25"
	/// @DnDArgument : "var" "enemy_health_bonus"
	global.enemy_health_bonus = global.enemy_health_bonus * 1.25;
}