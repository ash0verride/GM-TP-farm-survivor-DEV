/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0CAEBFE4
/// @DnDComment : // Set the maximum hitpoints that the player can have.
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "var" "hitpoints_max"
hitpoints_max = 10;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2679ED67
/// @DnDComment : // Set the starting hitpoints of the player (to the max).
/// @DnDArgument : "expr" "hitpoints_max"
/// @DnDArgument : "var" "hitpoints"
hitpoints = hitpoints_max;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6EC4DE21
/// @DnDComment : // Variables for tracking enemies.
/// @DnDInput : 2
/// @DnDArgument : "expr" "undefined"
/// @DnDArgument : "expr_1" "1000"
/// @DnDArgument : "var" "nearest_enemy"
/// @DnDArgument : "var_1" "nearest_distance"
nearest_enemy = undefined;
nearest_distance = 1000;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 29A8AE34
/// @DnDComment : // Cooldowns for the weapon attacks (from frames to seconds).
/// @DnDInput : 3
/// @DnDArgument : "expr" "30 * (1 / 60)"
/// @DnDArgument : "expr_1" "30 * (1 / 60)"
/// @DnDArgument : "expr_2" "30 * (1 / 60)"
/// @DnDArgument : "var" "hero_shoot_cooldown"
/// @DnDArgument : "var_1" "hero_swipe_cooldown"
/// @DnDArgument : "var_2" "hero_trail_cooldown"
hero_shoot_cooldown = 30 * (1 / 60);
hero_swipe_cooldown = 30 * (1 / 60);
hero_trail_cooldown = 30 * (1 / 60);

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 5338D1C4
/// @DnDComment : // Function for the shooting weapon.
/// @DnDArgument : "funcName" "hero_shoot"
function hero_shoot() 
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 09FCA3B1
	/// @DnDComment : // If the nearest enemy is within 1000 pixels...
	/// @DnDParent : 5338D1C4
	/// @DnDArgument : "expr" "nearest_distance < 1000"
	if(nearest_distance < 1000)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3FD3A163
		/// @DnDComment : // Reset the cooldown for this weapon.
		/// @DnDParent : 09FCA3B1
		/// @DnDArgument : "expr" "max(global.shooting[? "attack_speed"], 1) * (1 / 60)"
		/// @DnDArgument : "var" "hero_shoot_cooldown"
		hero_shoot_cooldown = max(global.shooting[? "attack_speed"], 1) * (1 / 60);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 77E02B61
		/// @DnDComment : // If this weapon is unlocked...
		/// @DnDParent : 09FCA3B1
		/// @DnDArgument : "expr" "global.shooting[? "unlocked"]"
		if(global.shooting[? "unlocked"])
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 6F9031C3
			/// @DnDComment : // Execute the function to handle this weapon.
			/// @DnDParent : 77E02B61
			/// @DnDArgument : "function" "shooting_attack"
			shooting_attack();
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 06A9C488
	/// @DnDComment : // The nearest enemy is too far away, but we don't want to fully reset the cooldown...
	/// @DnDParent : 5338D1C4
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A223085
		/// @DnDComment : // Set the cooldown to test again next frame.
		/// @DnDParent : 06A9C488
		/// @DnDArgument : "expr" "1 * (1 / 60)"
		/// @DnDArgument : "var" "hero_shoot_cooldown"
		hero_shoot_cooldown = 1 * (1 / 60);
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 306C1B0A
/// @DnDComment : // Function for the swiping weapon
/// @DnDArgument : "funcName" "hero_swipe"
function hero_swipe() 
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2763981B
	/// @DnDComment : // If the nearest enemy is within 250 pixels...
	/// @DnDParent : 306C1B0A
	/// @DnDArgument : "expr" "nearest_distance < 250"
	if(nearest_distance < 250)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4C76F775
		/// @DnDComment : // Reset the cooldown for this weapon.
		/// @DnDParent : 2763981B
		/// @DnDArgument : "expr" "max(global.swipe[? "attack_speed"], 1) * (1 / 60)"
		/// @DnDArgument : "var" "hero_swipe_cooldown"
		hero_swipe_cooldown = max(global.swipe[? "attack_speed"], 1) * (1 / 60);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 157AE437
		/// @DnDComment : // If this weapon is unlocked...
		/// @DnDParent : 2763981B
		/// @DnDArgument : "expr" "global.swipe[? "unlocked"]"
		if(global.swipe[? "unlocked"])
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 54C1514B
			/// @DnDComment : // Execute the function that handles this weapon.
			/// @DnDParent : 157AE437
			/// @DnDArgument : "function" "swipe_attack"
			swipe_attack();
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 66711618
	/// @DnDComment : // The nearest enemy is too far away, but we don't want to fully reset the cooldown...
	/// @DnDParent : 306C1B0A
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 051DC5B9
		/// @DnDComment : // Set the cooldown to test again next frame.
		/// @DnDParent : 66711618
		/// @DnDArgument : "expr" "1 * (1 / 60)"
		/// @DnDArgument : "var" "hero_swipe_cooldown"
		hero_swipe_cooldown = 1 * (1 / 60);
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 360C719C
/// @DnDComment : // Function for the trail weapon
/// @DnDArgument : "funcName" "hero_trail"
function hero_trail() 
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5BF8C306
	/// @DnDComment : // If the nearest enemy is within 300 pixels...
	/// @DnDParent : 360C719C
	/// @DnDArgument : "expr" "nearest_distance < 300"
	if(nearest_distance < 300)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 747D61C0
		/// @DnDComment : // Reset the cooldown for this weapon.
		/// @DnDParent : 5BF8C306
		/// @DnDArgument : "expr" "max(global.trail[? "attack_speed"], 1) * (1 / 60)"
		/// @DnDArgument : "var" "hero_trail_cooldown"
		hero_trail_cooldown = max(global.trail[? "attack_speed"], 1) * (1 / 60);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 002482D7
		/// @DnDComment : // If this weapon is unlocked...
		/// @DnDParent : 5BF8C306
		/// @DnDArgument : "expr" "global.trail[? "unlocked"]"
		if(global.trail[? "unlocked"])
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 76B57B8A
			/// @DnDComment : // Execute the function that handles the weapon.
			/// @DnDParent : 002482D7
			/// @DnDArgument : "function" "attack_trail"
			attack_trail();
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7C1313AD
	/// @DnDComment : // The nearest enemy is too far away, but we don't want to fully reset the cooldown...
	/// @DnDParent : 360C719C
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 79270878
		/// @DnDComment : // So set the cooldown to test again next frame.
		/// @DnDParent : 7C1313AD
		/// @DnDArgument : "expr" "1 * (1 / 60)"
		/// @DnDArgument : "var" "hero_trail_cooldown"
		hero_trail_cooldown = 1 * (1 / 60);
	}
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3F0ADE59
/// @DnDComment : // Create shadow object to follow.
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "_shadow"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_shadows"
/// @DnDArgument : "layer" ""Shadows""
/// @DnDSaveInfo : "objectid" "obj_shadows"
var _shadow = instance_create_layer(x + 0, y + 0, "Shadows", obj_shadows);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2536A793
/// @DnDComment : // Set shadow owner.
/// @DnDArgument : "expr" "self"
/// @DnDArgument : "var" "_shadow.owner_object"
_shadow.owner_object = self;