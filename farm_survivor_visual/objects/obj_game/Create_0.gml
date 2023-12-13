/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 085B5AAF
/// @DnDComment : // Start the game music on a loop.
/// @DnDArgument : "soundid" "snd_music_game"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "snd_music_game"
audio_play_sound(snd_music_game, 0, 1, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 1DF9B74A
/// @DnDComment : // Set the experience goal to reach the next level.
/// @DnDArgument : "value" "10"
/// @DnDArgument : "var" "xp_goal"
global.xp_goal = 10;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 188C4D95
/// @DnDComment : // Set current experience.
/// @DnDArgument : "var" "xp"
global.xp = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5C1785A4
/// @DnDComment : // Set the current level.
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "level"
global.level = 1;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 771D6C26
/// @DnDComment : // Set the cooldown time for spawning enemies.
/// @DnDArgument : "value" "60"
/// @DnDArgument : "var" "enemy_spawn_speed"
global.enemy_spawn_speed = 60;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 46720369
/// @DnDComment : // Set starting enemy health bonus.$(13_10)// This is a multiplier, and is increased each wave.$(13_10)// Result: enemy hp = enemy base hp * health bonus.
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "enemy_health_bonus"
global.enemy_health_bonus = 1;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 673B962C
/// @DnDComment : // Create the hero in the center of the room.
/// @DnDArgument : "xpos" "room_width / 2"
/// @DnDArgument : "ypos" "room_height / 2"
/// @DnDArgument : "objectid" "obj_hero"
/// @DnDSaveInfo : "objectid" "obj_hero"
instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_hero);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 3B937257
/// @DnDComment : Execute the shooting weapon reset function,$(13_10)initializing values for that weapon.
/// @DnDArgument : "function" "weapon_shooting_reset"
weapon_shooting_reset();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2E5FF8B3
/// @DnDComment : // Execute the swipe weapon reset function,$(13_10)// initializing values for that weapon.
/// @DnDArgument : "function" "weapon_swipe_reset"
weapon_swipe_reset();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 3995B453
/// @DnDComment : // Execute the trail weapon reset function,$(13_10)// initializing values for that weapon.
/// @DnDArgument : "function" "weapon_trail_reset"
weapon_trail_reset();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4F0492B3
/// @DnDComment : // Create the pause button.
/// @DnDArgument : "xpos" "1820"
/// @DnDArgument : "ypos" "20"
/// @DnDArgument : "objectid" "obj_pause_button"
/// @DnDArgument : "layer" ""UpgradeScreen""
/// @DnDSaveInfo : "objectid" "obj_pause_button"
instance_create_layer(1820, 20, "UpgradeScreen", obj_pause_button);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 71E44505
/// @DnDComment : // Sets cooldown for enemy spawning time (from frames to seconds).
/// @DnDArgument : "expr" "global.enemy_spawn_speed * (1 / 60)"
/// @DnDArgument : "var" "spawn_enemy_cooldown"
spawn_enemy_cooldown = global.enemy_spawn_speed * (1 / 60);

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 03928273
/// @DnDComment : // Function handles enemy spawning.
/// @DnDArgument : "funcName" "spawn_enemy"
function spawn_enemy() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6990133E
	/// @DnDComment : // Reset cooldown.
	/// @DnDParent : 03928273
	/// @DnDArgument : "expr" "global.enemy_spawn_speed * (1 / 60)"
	/// @DnDArgument : "var" "spawn_enemy_cooldown"
	spawn_enemy_cooldown = global.enemy_spawn_speed * (1 / 60);

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 4E85324C
	/// @DnDComment : // If an instance of obj_upgrade exists then$(13_10)// that means we are on the upgrade screen...
	/// @DnDParent : 03928273
	/// @DnDArgument : "obj" "obj_upgrade"
	/// @DnDSaveInfo : "obj" "obj_upgrade"
	var l4E85324C_0 = false;
	l4E85324C_0 = instance_exists(obj_upgrade);
	if(l4E85324C_0)
	{
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 29784589
		/// @DnDComment : // Exit event, stopping any enemies from spawning.
		/// @DnDParent : 4E85324C
		exit;
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 0CF07B0C
	/// @DnDComment : // If an instance of obj_upgrade exists then$(13_10)// that means we are on the upgrade screen...
	/// @DnDParent : 03928273
	/// @DnDArgument : "obj" "obj_game_over"
	/// @DnDSaveInfo : "obj" "obj_game_over"
	var l0CF07B0C_0 = false;
	l0CF07B0C_0 = instance_exists(obj_game_over);
	if(l0CF07B0C_0)
	{
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 1F5859BF
		/// @DnDComment : // Exit event, stopping any enemies from spawning.
		/// @DnDParent : 0CF07B0C
		exit;
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 1270B139
	/// @DnDComment : // If an instance of obj_upgrade exists then$(13_10)// that means we are on the upgrade screen...
	/// @DnDParent : 03928273
	/// @DnDArgument : "obj" "obj_template_complete"
	/// @DnDSaveInfo : "obj" "obj_template_complete"
	var l1270B139_0 = false;
	l1270B139_0 = instance_exists(obj_template_complete);
	if(l1270B139_0)
	{
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 605B7469
		/// @DnDComment : // Exit event, stopping any enemies from spawning.
		/// @DnDParent : 1270B139
		exit;
	}

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 22064BA4
	/// @DnDComment : // Declare a temp variable to hold an enemy type.$(13_10)// By default this will be the pumpkill enemy.
	/// @DnDParent : 03928273
	/// @DnDArgument : "var" "_enemy"
	/// @DnDArgument : "value" "obj_pumpkill"
	var _enemy = obj_pumpkill;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7985862A
	/// @DnDComment : // If we are over level 2...
	/// @DnDParent : 03928273
	/// @DnDArgument : "expr" "global.level > 2"
	if(global.level > 2)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 647F2FA1
		/// @DnDComment : // Change the enemy type to either$(13_10)// pigun or pumpkill.
		/// @DnDInput : 2
		/// @DnDParent : 7985862A
		/// @DnDArgument : "var" "_enemy"
		/// @DnDArgument : "option" "obj_pigun"
		/// @DnDArgument : "option_1" "obj_pumpkill"
		_enemy = choose(obj_pigun, obj_pumpkill);
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7F296995
	/// @DnDComment : // If we are over level 4...
	/// @DnDParent : 03928273
	/// @DnDArgument : "expr" "global.level > 4"
	if(global.level > 4)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 2353686B
		/// @DnDComment : // Change the enemy type to either$(13_10)// pigun, pumpkill or rooster.
		/// @DnDInput : 3
		/// @DnDParent : 7F296995
		/// @DnDArgument : "var" "_enemy"
		/// @DnDArgument : "option" "obj_pigun"
		/// @DnDArgument : "option_1" "obj_pumpkill"
		/// @DnDArgument : "option_2" "obj_rooster"
		_enemy = choose(obj_pigun, obj_pumpkill, obj_rooster);
	}

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4A600E76
	/// @DnDComment : // We want to spawn enemyes around the player.$(13_10)// So we first get a random direction (0 to 360).
	/// @DnDParent : 03928273
	/// @DnDArgument : "var" "_dir"
	/// @DnDArgument : "value" "random(360)"
	var _dir = random(360);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 768E9151
	/// @DnDComment : // Then we get the position 1200 pixels away$(13_10)// from the hero on the x axis.
	/// @DnDParent : 03928273
	/// @DnDArgument : "var" "_x"
	/// @DnDArgument : "value" "obj_hero.x + lengthdir_x(1200, _dir)"
	var _x = obj_hero.x + lengthdir_x(1200, _dir);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24575E0D
	/// @DnDComment : // Then we get the position 1200 pixels away$(13_10)// from the hero on the y axis.
	/// @DnDParent : 03928273
	/// @DnDArgument : "var" "_y"
	/// @DnDArgument : "value" "obj_hero.y + lengthdir_y(1200, _dir)"
	var _y = obj_hero.y + lengthdir_y(1200, _dir);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3461DB6B
	/// @DnDComment : // Create an enemy at that generated positon.
	/// @DnDParent : 03928273
	/// @DnDArgument : "xpos" "_x"
	/// @DnDArgument : "ypos" "_y"
	/// @DnDArgument : "objectid" "_enemy"
	instance_create_layer(_x, _y, "Instances", _enemy);
}