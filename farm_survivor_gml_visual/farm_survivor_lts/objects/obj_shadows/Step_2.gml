/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 162F8E33
/// @DnDComment : // Check if owner is set and exists.
/// @DnDInput : 2
/// @DnDArgument : "expr" "owner_object != noone"
/// @DnDArgument : "expr_1" "instance_exists(owner_object)"
if(owner_object != noone && instance_exists(owner_object))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 347D4B31
	/// @DnDComment : // Update position to owners position with any offsets.
	/// @DnDInput : 2
	/// @DnDParent : 162F8E33
	/// @DnDArgument : "expr" "owner_object.x + shadow_offset_x"
	/// @DnDArgument : "expr_1" "owner_object.y + shadow_offset_y"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = owner_object.x + shadow_offset_x;
	y = owner_object.y + shadow_offset_y;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 65B38986
else
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1FD6DCE9
	/// @DnDComment : // Destroy object.
	/// @DnDParent : 65B38986
	instance_destroy();
}