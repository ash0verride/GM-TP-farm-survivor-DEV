/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5AF18AC1
/// @DnDComment : If the game is currently paused...
/// @DnDArgument : "expr" "global.paused"
if(global.paused)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 4547E5E2
	/// @DnDComment : Increment alarm 0 to stop it triggering$(13_10)while paused.
	/// @DnDParent : 5AF18AC1
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "steps_relative" "1"
	alarm_set(0, 1 + alarm_get(0));
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 7D2E0762
/// @DnDComment : If the game is NOT over...
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
	/// @DnDComment : If the hero has run out of hitpoints...
	/// @DnDParent : 7D2E0762
	/// @DnDArgument : "expr" "obj_hero.hitpoints <= 0"
	if(obj_hero.hitpoints <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 550A2315
		/// @DnDApplyTo : obj_hero
		/// @DnDParent : 33EFFF6F
		with(obj_hero) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 36D19E73
		/// @DnDApplyTo : {obj_hero_bullet}
		/// @DnDParent : 33EFFF6F
		with(obj_hero_bullet) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4076159D
		/// @DnDApplyTo : obj_enemy
		/// @DnDParent : 33EFFF6F
		with(obj_enemy) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 07E98085
		/// @DnDApplyTo : obj_collectible
		/// @DnDParent : 33EFFF6F
		with(obj_collectible) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 373E1DD3
		/// @DnDApplyTo : obj_heart
		/// @DnDParent : 33EFFF6F
		with(obj_heart) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0EB7347D
		/// @DnDComment : Create game over object.
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
/// @DnDComment : If the game is over...$(13_10)$(13_10)We do this by checking is an end game screen is present.
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
	/// @DnDComment : If we have reached the experience goal...
	/// @DnDParent : 4A09CDC8
	/// @DnDArgument : "expr" "global.xp >= global.xp_goal"
	if(global.xp >= global.xp_goal)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 022DDA72
		/// @DnDApplyTo : {obj_enemy}
		/// @DnDParent : 6B32F2A6
		with(obj_enemy) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 771D4334
		/// @DnDApplyTo : {obj_hero_bullet}
		/// @DnDParent : 6B32F2A6
		with(obj_hero_bullet) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7837CBAF
		/// @DnDApplyTo : {obj_collectible}
		/// @DnDParent : 6B32F2A6
		with(obj_collectible) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5D53F404
		/// @DnDApplyTo : obj_heart
		/// @DnDParent : 6B32F2A6
		with(obj_heart) instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 0540DA5B
		/// @DnDComment : If we are on the last wave...
		/// @DnDParent : 6B32F2A6
		/// @DnDArgument : "expr" "global.level == 10"
		if(global.level == 10)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 332C65CF
			/// @DnDComment : Create the upgrade screen.
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
			/// @DnDComment : Level up!
			/// @DnDParent : 57A877D0
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "value_relative" "1"
			/// @DnDArgument : "var" "level"
			global.level += 1;
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 188748D6
			/// @DnDComment : Execute function to go to the next wave.
			/// @DnDParent : 57A877D0
			/// @DnDArgument : "function" "next_wave"
			next_wave();
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 306929CF
			/// @DnDComment : Create the upgrade screen.
			/// @DnDParent : 57A877D0
			/// @DnDArgument : "objectid" "obj_upgrade_screen"
			/// @DnDSaveInfo : "objectid" "obj_upgrade_screen"
			instance_create_layer(0, 0, "Instances", obj_upgrade_screen);
		}
	}
}