/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 7D2E0762
/// @DnDComment : // If the game is NOT over...
/// @DnDArgument : "obj" "obj_game_over"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_game_over"
var l7D2E0762_0 = false;
l7D2E0762_0 = instance_exists(obj_game_over);
if(!l7D2E0762_0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 33EFFF6F
	/// @DnDComment : // If the hero has run out of hitpoints...
	/// @DnDParent : 7D2E0762
	/// @DnDArgument : "expr" "obj_hero.hitpoints <= 0"
	if(obj_hero.hitpoints <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 550A2315
		/// @DnDComment : // Destroy the player.
		/// @DnDApplyTo : obj_hero
		/// @DnDParent : 33EFFF6F
		with(obj_hero) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 36D19E73
		/// @DnDComment : // Destroy any bullets.
		/// @DnDApplyTo : {obj_hero_bullet}
		/// @DnDParent : 33EFFF6F
		with(obj_hero_bullet) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4076159D
		/// @DnDComment : // Destroy the enemies.
		/// @DnDApplyTo : obj_enemy
		/// @DnDParent : 33EFFF6F
		with(obj_enemy) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 07E98085
		/// @DnDComment : // Destroy any xp pickups.
		/// @DnDApplyTo : {obj_collectable}
		/// @DnDParent : 33EFFF6F
		with(obj_collectable) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 373E1DD3
		/// @DnDComment : // Destroy any health pickups.
		/// @DnDApplyTo : obj_heart
		/// @DnDParent : 33EFFF6F
		with(obj_heart) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0EB7347D
		/// @DnDComment : // Create game over object.
		/// @DnDParent : 33EFFF6F
		/// @DnDArgument : "xpos" "1920 / 2"
		/// @DnDArgument : "ypos" "1080 / 2 - 150"
		/// @DnDArgument : "objectid" "obj_game_over"
		/// @DnDArgument : "layer" ""UpgradeScreen""
		/// @DnDSaveInfo : "objectid" "obj_game_over"
		instance_create_layer(1920 / 2, 1080 / 2 - 150, "UpgradeScreen", obj_game_over);
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4A09CDC8
/// @DnDComment : // If the game is over...$(13_10)$(13_10)// We do this by checking is an end game screen is present.
/// @DnDInput : 2
/// @DnDArgument : "expr" "instance_exists(obj_upgrade)"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "expr_1" "instance_exists(obj_template_complete)"
/// @DnDArgument : "not_1" "1"
if(!(instance_exists(obj_upgrade)) && !(instance_exists(obj_template_complete)))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6B32F2A6
	/// @DnDComment : // If we have reached the experience goal...
	/// @DnDParent : 4A09CDC8
	/// @DnDArgument : "expr" "global.xp >= global.xp_goal"
	if(global.xp >= global.xp_goal)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 022DDA72
		/// @DnDComment : // Destroy the enemies.
		/// @DnDApplyTo : {obj_enemy}
		/// @DnDParent : 6B32F2A6
		with(obj_enemy) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 771D4334
		/// @DnDComment : // Destroy any bullets.
		/// @DnDApplyTo : {obj_hero_bullet}
		/// @DnDParent : 6B32F2A6
		with(obj_hero_bullet) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7837CBAF
		/// @DnDComment : // Destroy any xp pickups.
		/// @DnDApplyTo : {obj_collectable}
		/// @DnDParent : 6B32F2A6
		with(obj_collectable) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5D53F404
		/// @DnDComment : // Destroy any health pickups.
		/// @DnDApplyTo : obj_heart
		/// @DnDParent : 6B32F2A6
		with(obj_heart) instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 0540DA5B
		/// @DnDComment : // If we are on the last wave...
		/// @DnDParent : 6B32F2A6
		/// @DnDArgument : "expr" "global.level == 10"
		if(global.level == 10)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 332C65CF
			/// @DnDComment : // Create the upgrade screen.
			/// @DnDParent : 0540DA5B
			/// @DnDArgument : "xpos" "1920 / 2"
			/// @DnDArgument : "ypos" "1080 / 2"
			/// @DnDArgument : "objectid" "obj_template_complete"
			/// @DnDArgument : "layer" ""UpgradeScreen""
			/// @DnDSaveInfo : "objectid" "obj_template_complete"
			instance_create_layer(1920 / 2, 1080 / 2, "UpgradeScreen", obj_template_complete);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 57A877D0
		/// @DnDParent : 6B32F2A6
		else
		{
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 0680F0EE
			/// @DnDComment : // Level up!
			/// @DnDParent : 57A877D0
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "value_relative" "1"
			/// @DnDArgument : "var" "level"
			global.level += 1;
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 188748D6
			/// @DnDComment : // Execute function to go to the next wave.
			/// @DnDParent : 57A877D0
			/// @DnDArgument : "function" "next_wave"
			next_wave();
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 306929CF
			/// @DnDComment : // Create the upgrade screen.
			/// @DnDParent : 57A877D0
			/// @DnDArgument : "objectid" "obj_upgrade_screen"
			/// @DnDSaveInfo : "objectid" "obj_upgrade_screen"
			instance_create_layer(0, 0, "Instances", obj_upgrade_screen);
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 78012815
/// @DnDComment : // If the game is not currently paused...
/// @DnDArgument : "expr" "global.paused"
/// @DnDArgument : "not" "1"
if(!(global.paused))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A35378A
	/// @DnDComment : // Reduce spawner cooldown timer.
	/// @DnDParent : 78012815
	/// @DnDArgument : "expr" "-delta_time * 0.000001"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "spawn_enemy_cooldown"
	spawn_enemy_cooldown += -delta_time * 0.000001;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2229766E
	/// @DnDComment : // Checks if spawner has expired.
	/// @DnDParent : 78012815
	/// @DnDArgument : "var" "spawn_enemy_cooldown"
	/// @DnDArgument : "op" "3"
	if(spawn_enemy_cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 4434B615
		/// @DnDComment : // Calls spawn enemy function.
		/// @DnDParent : 2229766E
		/// @DnDArgument : "function" "spawn_enemy"
		spawn_enemy();
	}
}