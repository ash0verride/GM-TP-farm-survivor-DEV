/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 14CBC211
/// @DnDComment : // Restart alarm.
/// @DnDArgument : "steps" "global.enemy_spawn_speed"
alarm_set(0, global.enemy_spawn_speed);

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 1515375F
/// @DnDComment : // If an instance of obj_upgrade exists then$(13_10)// that means we are on the upgrade screen...
/// @DnDArgument : "obj" "obj_upgrade"
/// @DnDSaveInfo : "obj" "obj_upgrade"
var l1515375F_0 = false;
l1515375F_0 = instance_exists(obj_upgrade);
if(l1515375F_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 342B2BBF
	/// @DnDComment : // Exit event, stopping any enemies from spawning.
	/// @DnDParent : 1515375F
	exit;
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 1D8FCECC
/// @DnDComment : // If an instance of obj_upgrade exists then$(13_10)// that means we are on the upgrade screen...
/// @DnDArgument : "obj" "obj_game_over"
/// @DnDSaveInfo : "obj" "obj_game_over"
var l1D8FCECC_0 = false;
l1D8FCECC_0 = instance_exists(obj_game_over);
if(l1D8FCECC_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 5E1710DB
	/// @DnDComment : // Exit event, stopping any enemies from spawning.
	/// @DnDParent : 1D8FCECC
	exit;
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 5182032C
/// @DnDComment : // If an instance of obj_upgrade exists then$(13_10)// that means we are on the upgrade screen...
/// @DnDArgument : "obj" "obj_template_complete"
/// @DnDSaveInfo : "obj" "obj_template_complete"
var l5182032C_0 = false;
l5182032C_0 = instance_exists(obj_template_complete);
if(l5182032C_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 23328E3E
	/// @DnDComment : // Exit event, stopping any enemies from spawning.
	/// @DnDParent : 5182032C
	exit;
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 79894E7E
/// @DnDComment : // Declare a temp variable to hold an enemy type.$(13_10)// By default this will be the pumpkill enemy.
/// @DnDArgument : "var" "_enemy"
/// @DnDArgument : "value" "obj_pumpkill"
var _enemy = obj_pumpkill;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7A093551
/// @DnDComment : // If we are over level 2...
/// @DnDArgument : "expr" "global.level > 2"
if(global.level > 2)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 29435478
	/// @DnDComment : // Change the enemy type to either$(13_10)// pigun or pumpkill.
	/// @DnDInput : 2
	/// @DnDParent : 7A093551
	/// @DnDArgument : "var" "_enemy"
	/// @DnDArgument : "option" "obj_pigun"
	/// @DnDArgument : "option_1" "obj_pumpkill"
	_enemy = choose(obj_pigun, obj_pumpkill);
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 191604F7
/// @DnDComment : // If we are over level 4...
/// @DnDArgument : "expr" "global.level > 4"
if(global.level > 4)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 484D520B
	/// @DnDComment : // Change the enemy type to either$(13_10)// pigun, pumpkill or rooster.
	/// @DnDInput : 3
	/// @DnDParent : 191604F7
	/// @DnDArgument : "var" "_enemy"
	/// @DnDArgument : "option" "obj_pigun"
	/// @DnDArgument : "option_1" "obj_pumpkill"
	/// @DnDArgument : "option_2" "obj_rooster"
	_enemy = choose(obj_pigun, obj_pumpkill, obj_rooster);
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 325F75C2
/// @DnDComment : // We want to spawn enemyes around the player.$(13_10)// So we first get a random direction (0 to 360).
/// @DnDArgument : "var" "_dir"
/// @DnDArgument : "value" "random(360)"
var _dir = random(360);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 53187C81
/// @DnDComment : // Then we get the position 1200 pixels away$(13_10)// from the hero on the x axis.
/// @DnDArgument : "var" "_x"
/// @DnDArgument : "value" "obj_hero.x + lengthdir_x(1200, _dir)"
var _x = obj_hero.x + lengthdir_x(1200, _dir);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 76683166
/// @DnDComment : // Then we get the position 1200 pixels away$(13_10)// from the hero on the y axis.
/// @DnDArgument : "var" "_y"
/// @DnDArgument : "value" "obj_hero.y + lengthdir_y(1200, _dir)"
var _y = obj_hero.y + lengthdir_y(1200, _dir);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 081A40D8
/// @DnDComment : // Create an enemy at that generated positon.
/// @DnDArgument : "xpos" "_x"
/// @DnDArgument : "ypos" "_y"
/// @DnDArgument : "objectid" "_enemy"
instance_create_layer(_x, _y, "Instances", _enemy);