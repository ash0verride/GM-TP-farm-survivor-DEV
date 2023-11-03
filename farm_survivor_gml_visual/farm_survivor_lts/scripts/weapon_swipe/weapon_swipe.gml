/// @DnDAction : YoYo Games.Data Structures.Create_Map
/// @DnDVersion : 1
/// @DnDHash : 648FB6BE
/// @DnDComment : // Create a map assigned to global.swipe
/// @DnDArgument : "var" "global.swipe"
global.swipe = ds_map_create();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 510640B6
/// @DnDComment : // Call the function to reset the swipe weapon.$(13_10)// First time, this essentially setps it up.
/// @DnDArgument : "function" "weapon_swipe_reset"
weapon_swipe_reset();

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 57FF56EA
/// @DnDComment : // Define the reset function for the swipe weapon.
/// @DnDArgument : "funcName" "weapon_swipe_reset"
function weapon_swipe_reset() 
{
	/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
	/// @DnDVersion : 1
	/// @DnDHash : 677B3E4A
	/// @DnDComment : // Reset swipe weapon values.
	/// @DnDInput : 3
	/// @DnDParent : 57FF56EA
	/// @DnDArgument : "var" "global.swipe"
	/// @DnDArgument : "key" ""damage""
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "key_1" ""attack_speed""
	/// @DnDArgument : "value_1" "60"
	/// @DnDArgument : "key_2" ""unlocked""
	/// @DnDArgument : "value_2" "false"
	ds_map_replace(global.swipe, "damage", 1);
	ds_map_replace(global.swipe, "attack_speed", 60);
	ds_map_replace(global.swipe, "unlocked", false);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6EEB128B
/// @DnDComment : // Decalre a function to get the swipe weapon upgrades.
/// @DnDArgument : "funcName" "weapon_swipe_upgrades"
/// @DnDArgument : "arg" "_upgrade_list"
function weapon_swipe_upgrades(_upgrade_list) 
{
	/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 678BEA6A
	/// @DnDComment : // Get wether the swipe weapon is unlocked.
	/// @DnDParent : 6EEB128B
	/// @DnDArgument : "assignee" "_unlocked"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "global.swipe"
	/// @DnDArgument : "key" ""unlocked""
	var _unlocked = ds_map_find_value(global.swipe, "unlocked");

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1A3CA1EB
	/// @DnDComment : // If it is NOT unlocked...
	/// @DnDParent : 6EEB128B
	/// @DnDArgument : "expr" "_unlocked"
	/// @DnDArgument : "not" "1"
	if(!(_unlocked))
	{
		/// @DnDAction : YoYo Games.Data Structures.Create_Map
		/// @DnDVersion : 1
		/// @DnDHash : 30C3E189
		/// @DnDComment : // Create a map to hold the upgrade.
		/// @DnDParent : 1A3CA1EB
		/// @DnDArgument : "var" "_map"
		/// @DnDArgument : "var_temp" "1"
		var _map = ds_map_create();
	
		/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
		/// @DnDVersion : 1
		/// @DnDHash : 081CE4C2
		/// @DnDComment : // Unlock this weapon.
		/// @DnDInput : 7
		/// @DnDParent : 1A3CA1EB
		/// @DnDArgument : "var" "_map"
		/// @DnDArgument : "key" ""description""
		/// @DnDArgument : "value" ""Small but fast\narea of effect\nattack around\nthe player""
		/// @DnDArgument : "key_1" ""title""
		/// @DnDArgument : "value_1" ""UNLOCK""
		/// @DnDArgument : "key_2" ""object""
		/// @DnDArgument : "value_2" "global.swipe"
		/// @DnDArgument : "key_3" ""key""
		/// @DnDArgument : "value_3" ""unlocked""
		/// @DnDArgument : "key_4" ""amount""
		/// @DnDArgument : "value_4" "1"
		/// @DnDArgument : "key_5" ""icon""
		/// @DnDArgument : "value_5" "spr_arcing_attack_big"
		/// @DnDArgument : "key_6" ""weapon_name""
		/// @DnDArgument : "value_6" ""SWIPE""
		ds_map_replace(_map, "description", "Small but fast\narea of effect\nattack around\nthe player");
		ds_map_replace(_map, "title", "UNLOCK");
		ds_map_replace(_map, "object", global.swipe);
		ds_map_replace(_map, "key", "unlocked");
		ds_map_replace(_map, "amount", 1);
		ds_map_replace(_map, "icon", spr_arcing_attack_big);
		ds_map_replace(_map, "weapon_name", "SWIPE");
	
		/// @DnDAction : YoYo Games.Data Structures.List_Add
		/// @DnDVersion : 1
		/// @DnDHash : 165382B1
		/// @DnDComment : // Add upgrade to the list.
		/// @DnDParent : 1A3CA1EB
		/// @DnDArgument : "var" "_upgrade_list"
		/// @DnDArgument : "value" "_map"
		ds_list_add(_upgrade_list, _map);
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 11D8507E
		/// @DnDComment : // Exit here, because there can't possibly be any other upgrades$(13_10)// if the weapon is not unlocked.
		/// @DnDParent : 1A3CA1EB
		exit;
	}

	/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 08781D58
	/// @DnDComment : // Get current attack speed of swipe weapon.
	/// @DnDParent : 6EEB128B
	/// @DnDArgument : "assignee" "_attack_speed"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "global.swipe"
	/// @DnDArgument : "key" ""attack_speed""
	var _attack_speed = ds_map_find_value(global.swipe, "attack_speed");

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 424103C4
	/// @DnDComment : // If attack speed is over 10...
	/// @DnDParent : 6EEB128B
	/// @DnDArgument : "expr" "_attack_speed > 10"
	if(_attack_speed > 10)
	{
		/// @DnDAction : YoYo Games.Data Structures.Create_Map
		/// @DnDVersion : 1
		/// @DnDHash : 35472F21
		/// @DnDComment : // Create a map to hold the upgrade.
		/// @DnDParent : 424103C4
		/// @DnDArgument : "var" "_map"
		/// @DnDArgument : "var_temp" "1"
		var _map = ds_map_create();
	
		/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
		/// @DnDVersion : 1
		/// @DnDHash : 266CCBFC
		/// @DnDComment : // Increase attack speed.$(13_10)// Note that this would actually decreasing a cooldown.
		/// @DnDInput : 7
		/// @DnDParent : 424103C4
		/// @DnDArgument : "var" "_map"
		/// @DnDArgument : "key" ""description""
		/// @DnDArgument : "value" ""Increase Attack Speed""
		/// @DnDArgument : "key_1" ""title""
		/// @DnDArgument : "value_1" ""SPEED""
		/// @DnDArgument : "key_2" ""object""
		/// @DnDArgument : "value_2" "global.swipe"
		/// @DnDArgument : "key_3" ""key""
		/// @DnDArgument : "value_3" ""attack_speed""
		/// @DnDArgument : "key_4" ""amount""
		/// @DnDArgument : "value_4" "-10"
		/// @DnDArgument : "key_5" ""icon""
		/// @DnDArgument : "value_5" "spr_arcing_attack_big"
		/// @DnDArgument : "key_6" ""weapon_name""
		/// @DnDArgument : "value_6" ""SWIPE""
		ds_map_replace(_map, "description", "Increase Attack Speed");
		ds_map_replace(_map, "title", "SPEED");
		ds_map_replace(_map, "object", global.swipe);
		ds_map_replace(_map, "key", "attack_speed");
		ds_map_replace(_map, "amount", -10);
		ds_map_replace(_map, "icon", spr_arcing_attack_big);
		ds_map_replace(_map, "weapon_name", "SWIPE");
	
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
	/// @DnDComment : // Finds the damage value.
	/// @DnDParent : 6EEB128B
	/// @DnDArgument : "assignee" "_damage"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "global.swipe"
	/// @DnDArgument : "key" ""damage""
	var _damage = ds_map_find_value(global.swipe, "damage");

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1152B63B
	/// @DnDComment : // Checks if the value is below 5.
	/// @DnDParent : 6EEB128B
	/// @DnDArgument : "expr" "_damage < 5"
	if(_damage < 5)
	{
		/// @DnDAction : YoYo Games.Data Structures.Create_Map
		/// @DnDVersion : 1
		/// @DnDHash : 06B76963
		/// @DnDComment : // Create a map to hold the upgrade.
		/// @DnDParent : 1152B63B
		/// @DnDArgument : "var" "_map"
		/// @DnDArgument : "var_temp" "1"
		var _map = ds_map_create();
	
		/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
		/// @DnDVersion : 1
		/// @DnDHash : 23B5791E
		/// @DnDComment : // Increment damage by 1.
		/// @DnDInput : 7
		/// @DnDParent : 1152B63B
		/// @DnDArgument : "var" "_map"
		/// @DnDArgument : "key" ""description""
		/// @DnDArgument : "value" ""Increase Damage""
		/// @DnDArgument : "key_1" ""title""
		/// @DnDArgument : "value_1" ""DAMAGE""
		/// @DnDArgument : "key_2" ""object""
		/// @DnDArgument : "value_2" "global.swipe"
		/// @DnDArgument : "key_3" ""key""
		/// @DnDArgument : "value_3" ""damage""
		/// @DnDArgument : "key_4" ""amount""
		/// @DnDArgument : "value_4" "1"
		/// @DnDArgument : "key_5" ""icon""
		/// @DnDArgument : "value_5" "spr_arcing_attack_big"
		/// @DnDArgument : "key_6" ""weapon_name""
		/// @DnDArgument : "value_6" ""SWIPE""
		ds_map_replace(_map, "description", "Increase Damage");
		ds_map_replace(_map, "title", "DAMAGE");
		ds_map_replace(_map, "object", global.swipe);
		ds_map_replace(_map, "key", "damage");
		ds_map_replace(_map, "amount", 1);
		ds_map_replace(_map, "icon", spr_arcing_attack_big);
		ds_map_replace(_map, "weapon_name", "SWIPE");
	
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