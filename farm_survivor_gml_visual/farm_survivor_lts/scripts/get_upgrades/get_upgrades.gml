/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7C795615
/// @DnDComment : // Declare a function that retrieves all possible upgrades$(13_10)// and creates upgrade card objects for 3 of them.
/// @DnDArgument : "funcName" "get_upgrades"
function get_upgrades() 
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 017ACDF5
	/// @DnDComment : // Destroy any existing upgrade cards.
	/// @DnDApplyTo : obj_upgrade
	/// @DnDParent : 7C795615
	with(obj_upgrade) instance_destroy();

	/// @DnDAction : YoYo Games.Data Structures.Create_List
	/// @DnDVersion : 1
	/// @DnDHash : 374CF7B3
	/// @DnDComment : // Create a new list to hold possible upgrades.
	/// @DnDParent : 7C795615
	/// @DnDArgument : "var" "_upgrade_list"
	/// @DnDArgument : "var_temp" "1"
	var _upgrade_list = ds_list_create();

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 5B37121D
	/// @DnDComment : // Get upgrades for the shooting weapon and place them in the list.
	/// @DnDParent : 7C795615
	/// @DnDArgument : "function" "weapon_shooting_upgrades"
	/// @DnDArgument : "arg" "_upgrade_list"
	weapon_shooting_upgrades(_upgrade_list);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6A968EEB
	/// @DnDComment : // Get upgrades for the swipe weapon and place them in the list.
	/// @DnDParent : 7C795615
	/// @DnDArgument : "function" "weapon_swipe_upgrades"
	/// @DnDArgument : "arg" "_upgrade_list"
	weapon_swipe_upgrades(_upgrade_list);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 4EDF6C9F
	/// @DnDComment : // Get upgrades for the trail weapon and place them in the list.
	/// @DnDParent : 7C795615
	/// @DnDArgument : "function" "weapon_trail_upgrades"
	/// @DnDArgument : "arg" "_upgrade_list"
	weapon_trail_upgrades(_upgrade_list);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 105331FA
	/// @DnDComment : // Shuffle the list containing all the retrieved upgrades.
	/// @DnDParent : 7C795615
	/// @DnDArgument : "function" "list_shuffle"
	/// @DnDArgument : "arg" "_upgrade_list"
	list_shuffle(_upgrade_list);

	/// @DnDAction : YoYo Games.Data Structures.List_Count
	/// @DnDVersion : 1
	/// @DnDHash : 7FDF53D0
	/// @DnDComment : // Get the size of the list, this$(13_10)// is how many upgrades are in it.
	/// @DnDParent : 7C795615
	/// @DnDArgument : "assignee" "_size"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "_upgrade_list"
	var _size = ds_list_size(_upgrade_list);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C78885D
	/// @DnDComment : // Define the x position where the first upgrade card$(13_10)// will be created.
	/// @DnDParent : 7C795615
	/// @DnDArgument : "var" "_x"
	/// @DnDArgument : "value" "-400"
	var _x = -400;

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 14382F38
	/// @DnDComment : // For each upgrade in the list,$(13_10)// up to a max of 3...
	/// @DnDParent : 7C795615
	/// @DnDArgument : "init" "_index = 0"
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "_index < min(_size, 3)"
	/// @DnDArgument : "expr" "_index += 1"
	for(var _index = 0; _index < min(_size, 3); _index += 1) {
		/// @DnDAction : YoYo Games.Data Structures.List_Get_At
		/// @DnDVersion : 1
		/// @DnDHash : 13D5D950
		/// @DnDComment : // Get the upgrade at the current index.
		/// @DnDParent : 14382F38
		/// @DnDArgument : "assignee" "_upgrade_data"
		/// @DnDArgument : "var" "_upgrade_list"
		/// @DnDArgument : "index" "_index"
		_upgrade_data = ds_list_find_value(_upgrade_list, _index);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 73881E29
		/// @DnDComment : // Create a new upgrade card object.
		/// @DnDParent : 14382F38
		/// @DnDArgument : "xpos" "1920 / 2 + _x"
		/// @DnDArgument : "ypos" "1080 / 2"
		/// @DnDArgument : "var" "_upgrade"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_upgrade"
		/// @DnDArgument : "layer" ""UpgradeScreen""
		/// @DnDSaveInfo : "objectid" "obj_upgrade"
		var _upgrade = instance_create_layer(1920 / 2 + _x, 1080 / 2, "UpgradeScreen", obj_upgrade);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 24DD75E0
		/// @DnDComment : // Set the reveal covering life.
		/// @DnDParent : 14382F38
		/// @DnDArgument : "expr" "0.5 + 0.25 *_index"
		/// @DnDArgument : "var" "_upgrade.roll_life"
		_upgrade.roll_life = 0.5 + 0.25 *_index;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 648F7C3F
		/// @DnDComment : // Set the upgrade data to the upgrade card object.
		/// @DnDParent : 14382F38
		/// @DnDArgument : "expr" "_upgrade_data"
		/// @DnDArgument : "var" "_upgrade.upgrade_data"
		_upgrade.upgrade_data = _upgrade_data;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 62B9F25C
		/// @DnDComment : // Increment the x position for the next card.
		/// @DnDParent : 14382F38
		/// @DnDArgument : "expr" "400"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "_x"
		_x += 400;
	}
}