/// @DnDAction : YoYo Games.Data Structures.Create_Map
/// @DnDVersion : 1
/// @DnDHash : 648FB6BE
/// @DnDComment : // Create map to store the shooting weapon data.
/// @DnDArgument : "var" "global.shooting"
global.shooting = ds_map_create();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 1AB86568
/// @DnDComment : // Call function to reset the shooting weapon state.
/// @DnDArgument : "function" "weapon_shooting_reset"
weapon_shooting_reset();

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 144220B7
/// @DnDComment : // Define the function to reset the shooting weapon state.
/// @DnDArgument : "funcName" "weapon_shooting_reset"
function weapon_shooting_reset() 
{
	/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
	/// @DnDVersion : 1
	/// @DnDHash : 677B3E4A
	/// @DnDComment : // Shooting weapon bases stats.$(13_10)// Shooting weapon starts unlocked as it's the first weapon.
	/// @DnDInput : 4
	/// @DnDParent : 144220B7
	/// @DnDArgument : "var" "global.shooting"
	/// @DnDArgument : "key" ""damage""
	/// @DnDArgument : "value" "0.75"
	/// @DnDArgument : "key_1" ""attack_speed""
	/// @DnDArgument : "value_1" "30"
	/// @DnDArgument : "key_2" ""number_of_shots""
	/// @DnDArgument : "value_2" "1"
	/// @DnDArgument : "key_3" ""unlocked""
	/// @DnDArgument : "value_3" "true"
	ds_map_replace(global.shooting, "damage", 0.75);
	ds_map_replace(global.shooting, "attack_speed", 30);
	ds_map_replace(global.shooting, "number_of_shots", 1);
	ds_map_replace(global.shooting, "unlocked", true);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6EEB128B
/// @DnDComment : // Define function to retrieve list of available shooting$(13_10)// weapon upgrades.
/// @DnDArgument : "funcName" "weapon_shooting_upgrades"
/// @DnDArgument : "arg" "_upgrade_list"
function weapon_shooting_upgrades(_upgrade_list) 
{
	/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 6F962475
	/// @DnDComment : // Get wether the shooting weapon is unlocked.
	/// @DnDParent : 6EEB128B
	/// @DnDArgument : "assignee" "_unlocked"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "global.shooting"
	/// @DnDArgument : "key" ""unlocked""
	var _unlocked = ds_map_find_value(global.shooting, "unlocked");

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 45F2C2BB
	/// @DnDComment : // If the shooting weapon is NOT unlocked...
	/// @DnDParent : 6EEB128B
	/// @DnDArgument : "expr" "_unlocked"
	/// @DnDArgument : "not" "1"
	if(!(_unlocked))
	{
		/// @DnDAction : YoYo Games.Data Structures.Create_Map
		/// @DnDVersion : 1
		/// @DnDHash : 4189A8B2
		/// @DnDComment : // Create map to strore the upgrade.
		/// @DnDParent : 45F2C2BB
		/// @DnDArgument : "var" "_map"
		/// @DnDArgument : "var_temp" "1"
		var _map = ds_map_create();
	
		/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
		/// @DnDVersion : 1
		/// @DnDHash : 5506FBA3
		/// @DnDComment : // Upgrade to unlock shooting weapon.
		/// @DnDInput : 7
		/// @DnDParent : 45F2C2BB
		/// @DnDArgument : "var" "_map"
		/// @DnDArgument : "key" ""description""
		/// @DnDArgument : "value" ""Unlock Shooting\nWeapon""
		/// @DnDArgument : "key_1" ""title""
		/// @DnDArgument : "value_1" ""UNLOCK""
		/// @DnDArgument : "key_2" ""object""
		/// @DnDArgument : "value_2" "global.shooting"
		/// @DnDArgument : "key_3" ""key""
		/// @DnDArgument : "value_3" ""unlocked""
		/// @DnDArgument : "key_4" ""amount""
		/// @DnDArgument : "value_4" "1"
		/// @DnDArgument : "key_5" ""icon""
		/// @DnDArgument : "value_5" "spr_shooting_attack_big"
		/// @DnDArgument : "key_6" ""weapon_name""
		/// @DnDArgument : "value_6" ""PROJECTILE""
		ds_map_replace(_map, "description", "Unlock Shooting\nWeapon");
		ds_map_replace(_map, "title", "UNLOCK");
		ds_map_replace(_map, "object", global.shooting);
		ds_map_replace(_map, "key", "unlocked");
		ds_map_replace(_map, "amount", 1);
		ds_map_replace(_map, "icon", spr_shooting_attack_big);
		ds_map_replace(_map, "weapon_name", "PROJECTILE");
	
		/// @DnDAction : YoYo Games.Data Structures.List_Add
		/// @DnDVersion : 1
		/// @DnDHash : 3E671064
		/// @DnDComment : // Add upgrade to list.
		/// @DnDParent : 45F2C2BB
		/// @DnDArgument : "var" "_upgrade_list"
		/// @DnDArgument : "value" "_map"
		ds_list_add(_upgrade_list, _map);
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 63EE2A53
		/// @DnDComment : // Exits the event.
		/// @DnDParent : 45F2C2BB
		exit;
	}

	/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 15285D18
	/// @DnDComment : // Get current shooting weapon attack speed.
	/// @DnDParent : 6EEB128B
	/// @DnDArgument : "assignee" "_attack_speed"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "global.shooting"
	/// @DnDArgument : "key" ""attack_speed""
	var _attack_speed = ds_map_find_value(global.shooting, "attack_speed");

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 424103C4
	/// @DnDComment : // If attack speed is over 5...
	/// @DnDParent : 6EEB128B
	/// @DnDArgument : "expr" "_attack_speed > 5"
	if(_attack_speed > 5)
	{
		/// @DnDAction : YoYo Games.Data Structures.Create_Map
		/// @DnDVersion : 1
		/// @DnDHash : 35472F21
		/// @DnDComment : // Create map to strore the upgrade.
		/// @DnDParent : 424103C4
		/// @DnDArgument : "var" "_map"
		/// @DnDArgument : "var_temp" "1"
		var _map = ds_map_create();
	
		/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
		/// @DnDVersion : 1
		/// @DnDHash : 266CCBFC
		/// @DnDComment : // Upgrade to increase attack speed of shooting weapon.
		/// @DnDInput : 7
		/// @DnDParent : 424103C4
		/// @DnDArgument : "var" "_map"
		/// @DnDArgument : "key" ""description""
		/// @DnDArgument : "value" ""Increase Attack Speed""
		/// @DnDArgument : "key_1" ""title""
		/// @DnDArgument : "value_1" ""SPEED""
		/// @DnDArgument : "key_2" ""object""
		/// @DnDArgument : "value_2" "global.shooting"
		/// @DnDArgument : "key_3" ""key""
		/// @DnDArgument : "value_3" ""attack_speed""
		/// @DnDArgument : "key_4" ""amount""
		/// @DnDArgument : "value_4" "-5"
		/// @DnDArgument : "key_5" ""icon""
		/// @DnDArgument : "value_5" "spr_shooting_attack_big"
		/// @DnDArgument : "key_6" ""weapon_name""
		/// @DnDArgument : "value_6" ""PROJECTILE""
		ds_map_replace(_map, "description", "Increase Attack Speed");
		ds_map_replace(_map, "title", "SPEED");
		ds_map_replace(_map, "object", global.shooting);
		ds_map_replace(_map, "key", "attack_speed");
		ds_map_replace(_map, "amount", -5);
		ds_map_replace(_map, "icon", spr_shooting_attack_big);
		ds_map_replace(_map, "weapon_name", "PROJECTILE");
	
		/// @DnDAction : YoYo Games.Data Structures.List_Add
		/// @DnDVersion : 1
		/// @DnDHash : 261E2C55
		/// @DnDComment : // Add upgrade to list.
		/// @DnDParent : 424103C4
		/// @DnDArgument : "var" "_upgrade_list"
		/// @DnDArgument : "value" "_map"
		ds_list_add(_upgrade_list, _map);
	}

	/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 37E39EBE
	/// @DnDComment : // Get the current number of shots...
	/// @DnDParent : 6EEB128B
	/// @DnDArgument : "assignee" "_number_of_shots"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "global.shooting"
	/// @DnDArgument : "key" ""number_of_shots""
	var _number_of_shots = ds_map_find_value(global.shooting, "number_of_shots");

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 563362E6
	/// @DnDComment : // If the number of shots is under 7...
	/// @DnDParent : 6EEB128B
	/// @DnDArgument : "expr" "_number_of_shots < 7"
	if(_number_of_shots < 7)
	{
		/// @DnDAction : YoYo Games.Data Structures.Create_Map
		/// @DnDVersion : 1
		/// @DnDHash : 57043F9E
		/// @DnDComment : // Create map to strore the upgrade.
		/// @DnDParent : 563362E6
		/// @DnDArgument : "var" "_map"
		/// @DnDArgument : "var_temp" "1"
		var _map = ds_map_create();
	
		/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
		/// @DnDVersion : 1
		/// @DnDHash : 3715212D
		/// @DnDComment : // Upgrade to increase the number of shots$(13_10)// from the shooting weapon.
		/// @DnDInput : 7
		/// @DnDParent : 563362E6
		/// @DnDArgument : "var" "_map"
		/// @DnDArgument : "key" ""description""
		/// @DnDArgument : "value" ""Number of shots +2""
		/// @DnDArgument : "key_1" ""title""
		/// @DnDArgument : "value_1" ""BARRAGE""
		/// @DnDArgument : "key_2" ""object""
		/// @DnDArgument : "value_2" "global.shooting"
		/// @DnDArgument : "key_3" ""key""
		/// @DnDArgument : "value_3" ""number_of_shots""
		/// @DnDArgument : "key_4" ""amount""
		/// @DnDArgument : "value_4" "2"
		/// @DnDArgument : "key_5" ""icon""
		/// @DnDArgument : "value_5" "spr_shooting_attack_big"
		/// @DnDArgument : "key_6" ""weapon_name""
		/// @DnDArgument : "value_6" ""PROJECTILE""
		ds_map_replace(_map, "description", "Number of shots +2");
		ds_map_replace(_map, "title", "BARRAGE");
		ds_map_replace(_map, "object", global.shooting);
		ds_map_replace(_map, "key", "number_of_shots");
		ds_map_replace(_map, "amount", 2);
		ds_map_replace(_map, "icon", spr_shooting_attack_big);
		ds_map_replace(_map, "weapon_name", "PROJECTILE");
	
		/// @DnDAction : YoYo Games.Data Structures.List_Add
		/// @DnDVersion : 1
		/// @DnDHash : 64B944A8
		/// @DnDComment : // Add upgrade to list.
		/// @DnDParent : 563362E6
		/// @DnDArgument : "var" "_upgrade_list"
		/// @DnDArgument : "value" "_map"
		ds_list_add(_upgrade_list, _map);
	}

	/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 6CB82038
	/// @DnDComment : // Get current shooting weapon damage.
	/// @DnDParent : 6EEB128B
	/// @DnDArgument : "assignee" "_damage"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "global.shooting"
	/// @DnDArgument : "key" ""damage""
	var _damage = ds_map_find_value(global.shooting, "damage");

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1152B63B
	/// @DnDComment : // If damage is under 4...
	/// @DnDParent : 6EEB128B
	/// @DnDArgument : "expr" "_damage < 4"
	if(_damage < 4)
	{
		/// @DnDAction : YoYo Games.Data Structures.Create_Map
		/// @DnDVersion : 1
		/// @DnDHash : 06B76963
		/// @DnDComment : // Create map to strore the upgrade.
		/// @DnDParent : 1152B63B
		/// @DnDArgument : "var" "_map"
		/// @DnDArgument : "var_temp" "1"
		var _map = ds_map_create();
	
		/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
		/// @DnDVersion : 1
		/// @DnDHash : 23B5791E
		/// @DnDComment : // Upgrade to increase damage.
		/// @DnDInput : 7
		/// @DnDParent : 1152B63B
		/// @DnDArgument : "var" "_map"
		/// @DnDArgument : "key" ""description""
		/// @DnDArgument : "value" ""Increase Damage""
		/// @DnDArgument : "key_1" ""title""
		/// @DnDArgument : "value_1" ""DAMAGE""
		/// @DnDArgument : "key_2" ""object""
		/// @DnDArgument : "value_2" "global.shooting"
		/// @DnDArgument : "key_3" ""key""
		/// @DnDArgument : "value_3" ""damage""
		/// @DnDArgument : "key_4" ""amount""
		/// @DnDArgument : "value_4" "0.4"
		/// @DnDArgument : "key_5" ""icon""
		/// @DnDArgument : "value_5" "spr_shooting_attack_big"
		/// @DnDArgument : "key_6" ""weapon_name""
		/// @DnDArgument : "value_6" ""PROJECTILE""
		ds_map_replace(_map, "description", "Increase Damage");
		ds_map_replace(_map, "title", "DAMAGE");
		ds_map_replace(_map, "object", global.shooting);
		ds_map_replace(_map, "key", "damage");
		ds_map_replace(_map, "amount", 0.4);
		ds_map_replace(_map, "icon", spr_shooting_attack_big);
		ds_map_replace(_map, "weapon_name", "PROJECTILE");
	
		/// @DnDAction : YoYo Games.Data Structures.List_Add
		/// @DnDVersion : 1
		/// @DnDHash : 7D79CD25
		/// @DnDComment : // Add upgrade to list.
		/// @DnDParent : 1152B63B
		/// @DnDArgument : "var" "_upgrade_list"
		/// @DnDArgument : "value" "_map"
		ds_list_add(_upgrade_list, _map);
	}
}