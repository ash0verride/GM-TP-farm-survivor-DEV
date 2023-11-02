/// @DnDAction : YoYo Games.Data Structures.Create_Map
/// @DnDVersion : 1
/// @DnDHash : 648FB6BE
/// @DnDComment : // Create a map assigned to global.trail.
/// @DnDArgument : "var" "global.trail"
global.trail = ds_map_create();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 510640B6
/// @DnDComment : // Call the function to reset the trail weapon.$(13_10)// First time, this essentially setps it up.
/// @DnDArgument : "function" "weapon_trail_reset"
weapon_trail_reset();

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 57FF56EA
/// @DnDComment : // Define the reset function for the trail weapon.
/// @DnDArgument : "funcName" "weapon_trail_reset"
function weapon_trail_reset() 
{
	/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
	/// @DnDVersion : 1
	/// @DnDHash : 677B3E4A
	/// @DnDComment : // Unlock weapon upgrade.
	/// @DnDInput : 3
	/// @DnDParent : 57FF56EA
	/// @DnDArgument : "var" "global.trail"
	/// @DnDArgument : "key" ""damage""
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "key_1" ""attack_speed""
	/// @DnDArgument : "value_1" "90"
	/// @DnDArgument : "key_2" ""unlocked""
	/// @DnDArgument : "value_2" "false"
	ds_map_replace(global.trail, "damage", 1);
	ds_map_replace(global.trail, "attack_speed", 90);
	ds_map_replace(global.trail, "unlocked", false);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6EEB128B
/// @DnDComment : // Define function to retrieve upgrades for the trail weapon.
/// @DnDArgument : "funcName" "weapon_trail_upgrades"
/// @DnDArgument : "arg" "_upgrade_list"
function weapon_trail_upgrades(_upgrade_list) 
{
	/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 6ABEB782
	/// @DnDComment : // Get wether the trail weapon is unlocked.
	/// @DnDParent : 6EEB128B
	/// @DnDArgument : "assignee" "_unlocked"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "global.trail"
	/// @DnDArgument : "key" ""unlocked""
	var _unlocked = ds_map_find_value(global.trail, "unlocked");

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3BF2D924
	/// @DnDComment : // If it is NOT unlocked...
	/// @DnDParent : 6EEB128B
	/// @DnDArgument : "expr" "_unlocked"
	/// @DnDArgument : "not" "1"
	if(!(_unlocked))
	{
		/// @DnDAction : YoYo Games.Data Structures.Create_Map
		/// @DnDVersion : 1
		/// @DnDHash : 7DC52667
		/// @DnDComment : // Create map to store upgrade.
		/// @DnDParent : 3BF2D924
		/// @DnDArgument : "var" "_map"
		/// @DnDArgument : "var_temp" "1"
		var _map = ds_map_create();
	
		/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
		/// @DnDVersion : 1
		/// @DnDHash : 469A02B2
		/// @DnDComment : // Upgrade to unlock the trail weapon.
		/// @DnDInput : 7
		/// @DnDParent : 3BF2D924
		/// @DnDArgument : "var" "_map"
		/// @DnDArgument : "key" ""description""
		/// @DnDArgument : "value" ""Large but slow\narea of effect\nattack around\nthe player""
		/// @DnDArgument : "key_1" ""title""
		/// @DnDArgument : "value_1" ""UNLOCK""
		/// @DnDArgument : "key_2" ""object""
		/// @DnDArgument : "value_2" "global.trail"
		/// @DnDArgument : "key_3" ""key""
		/// @DnDArgument : "value_3" ""unlocked""
		/// @DnDArgument : "key_4" ""amount""
		/// @DnDArgument : "value_4" "1"
		/// @DnDArgument : "key_5" ""icon""
		/// @DnDArgument : "value_5" "spr_trail_attack_big"
		/// @DnDArgument : "key_6" ""weapon_name""
		/// @DnDArgument : "value_6" ""TRAIL""
		ds_map_replace(_map, "description", "Large but slow\narea of effect\nattack around\nthe player");
		ds_map_replace(_map, "title", "UNLOCK");
		ds_map_replace(_map, "object", global.trail);
		ds_map_replace(_map, "key", "unlocked");
		ds_map_replace(_map, "amount", 1);
		ds_map_replace(_map, "icon", spr_trail_attack_big);
		ds_map_replace(_map, "weapon_name", "TRAIL");
	
		/// @DnDAction : YoYo Games.Data Structures.List_Add
		/// @DnDVersion : 1
		/// @DnDHash : 4C415B9A
		/// @DnDComment : // Add upgrade to the list.
		/// @DnDParent : 3BF2D924
		/// @DnDArgument : "var" "_upgrade_list"
		/// @DnDArgument : "value" "_map"
		ds_list_add(_upgrade_list, _map);
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 6037F91A
		/// @DnDComment : // Set the reveal covering life.
		/// @DnDParent : 3BF2D924
		exit;
	}

	/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 15285D18
	/// @DnDComment : // Get the current trail weapon attack speed.
	/// @DnDParent : 6EEB128B
	/// @DnDArgument : "assignee" "_attack_speed"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "global.trail"
	/// @DnDArgument : "key" ""attack_speed""
	var _attack_speed = ds_map_find_value(global.trail, "attack_speed");

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 424103C4
	/// @DnDComment : // If attack speed is over 30...$(13_10)// Note this is a cooldown, so higher is slower.
	/// @DnDParent : 6EEB128B
	/// @DnDArgument : "expr" "_attack_speed > 30"
	if(_attack_speed > 30)
	{
		/// @DnDAction : YoYo Games.Data Structures.Create_Map
		/// @DnDVersion : 1
		/// @DnDHash : 35472F21
		/// @DnDComment : // Create map to store upgrade.
		/// @DnDParent : 424103C4
		/// @DnDArgument : "var" "_map"
		/// @DnDArgument : "var_temp" "1"
		var _map = ds_map_create();
	
		/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
		/// @DnDVersion : 1
		/// @DnDHash : 266CCBFC
		/// @DnDComment : // Upgrade to increase attack speed.
		/// @DnDInput : 7
		/// @DnDParent : 424103C4
		/// @DnDArgument : "var" "_map"
		/// @DnDArgument : "key" ""description""
		/// @DnDArgument : "value" ""Increase Attack Speed""
		/// @DnDArgument : "key_1" ""title""
		/// @DnDArgument : "value_1" ""SPEED""
		/// @DnDArgument : "key_2" ""object""
		/// @DnDArgument : "value_2" "global.trail"
		/// @DnDArgument : "key_3" ""key""
		/// @DnDArgument : "value_3" ""attack_speed""
		/// @DnDArgument : "key_4" ""amount""
		/// @DnDArgument : "value_4" "-15"
		/// @DnDArgument : "key_5" ""icon""
		/// @DnDArgument : "value_5" "spr_trail_attack_big"
		/// @DnDArgument : "key_6" ""weapon_name""
		/// @DnDArgument : "value_6" ""TRAIL""
		ds_map_replace(_map, "description", "Increase Attack Speed");
		ds_map_replace(_map, "title", "SPEED");
		ds_map_replace(_map, "object", global.trail);
		ds_map_replace(_map, "key", "attack_speed");
		ds_map_replace(_map, "amount", -15);
		ds_map_replace(_map, "icon", spr_trail_attack_big);
		ds_map_replace(_map, "weapon_name", "TRAIL");
	
		/// @DnDAction : YoYo Games.Data Structures.List_Add
		/// @DnDVersion : 1
		/// @DnDHash : 261E2C55
		/// @DnDComment : // Add upgrade to the list.
		/// @DnDParent : 424103C4
		/// @DnDArgument : "var" "_upgrade_list"
		/// @DnDArgument : "value" "_map"
		ds_list_add(_upgrade_list, _map);
	}

	/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 6CB82038
	/// @DnDComment : // Get current trail weapon damage.
	/// @DnDParent : 6EEB128B
	/// @DnDArgument : "assignee" "_damage"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "global.trail"
	/// @DnDArgument : "key" ""damage""
	var _damage = ds_map_find_value(global.trail, "damage");

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1152B63B
	/// @DnDComment : // If damage is under 5...
	/// @DnDParent : 6EEB128B
	/// @DnDArgument : "expr" "_damage < 5"
	if(_damage < 5)
	{
		/// @DnDAction : YoYo Games.Data Structures.Create_Map
		/// @DnDVersion : 1
		/// @DnDHash : 06B76963
		/// @DnDComment : // Create map to store upgrade.
		/// @DnDParent : 1152B63B
		/// @DnDArgument : "var" "_map"
		/// @DnDArgument : "var_temp" "1"
		var _map = ds_map_create();
	
		/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
		/// @DnDVersion : 1
		/// @DnDHash : 23B5791E
		/// @DnDComment : // Upgrade from increasing trail weapon damage.
		/// @DnDInput : 7
		/// @DnDParent : 1152B63B
		/// @DnDArgument : "var" "_map"
		/// @DnDArgument : "key" ""description""
		/// @DnDArgument : "value" ""Increase Damage""
		/// @DnDArgument : "key_1" ""title""
		/// @DnDArgument : "value_1" ""DAMAGE""
		/// @DnDArgument : "key_2" ""object""
		/// @DnDArgument : "value_2" "global.trail"
		/// @DnDArgument : "key_3" ""key""
		/// @DnDArgument : "value_3" ""damage""
		/// @DnDArgument : "key_4" ""amount""
		/// @DnDArgument : "value_4" "1"
		/// @DnDArgument : "key_5" ""icon""
		/// @DnDArgument : "value_5" "spr_trail_attack_big"
		/// @DnDArgument : "key_6" ""weapon_name""
		/// @DnDArgument : "value_6" ""TRAIL""
		ds_map_replace(_map, "description", "Increase Damage");
		ds_map_replace(_map, "title", "DAMAGE");
		ds_map_replace(_map, "object", global.trail);
		ds_map_replace(_map, "key", "damage");
		ds_map_replace(_map, "amount", 1);
		ds_map_replace(_map, "icon", spr_trail_attack_big);
		ds_map_replace(_map, "weapon_name", "TRAIL");
	
		/// @DnDAction : YoYo Games.Data Structures.List_Add
		/// @DnDVersion : 1
		/// @DnDHash : 7D79CD25
		/// @DnDComment : // Add upgrade to the list.
		/// @DnDParent : 1152B63B
		/// @DnDArgument : "var" "_upgrade_list"
		/// @DnDArgument : "value" "_map"
		ds_list_add(_upgrade_list, _map);
	}
}