/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0AFD5D0C
/// @DnDComment : // Declare a function to keep an instance in the room.
/// @DnDArgument : "funcName" "keep_in_room"
function keep_in_room() 
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1332F599
	/// @DnDComment : // If the right of the instance's bounding box is over room_width - 50...
	/// @DnDParent : 0AFD5D0C
	/// @DnDArgument : "expr" "bbox_right + hspeed > room_width - 50"
	if(bbox_right + hspeed > room_width - 50)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53B8894F
		/// @DnDComment : // Set horizontal speed to 0.
		/// @DnDParent : 1332F599
		/// @DnDArgument : "var" "hspeed"
		hspeed = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 38D97176
	/// @DnDComment : // If the left of the instance's bounding box is below 50...
	/// @DnDParent : 0AFD5D0C
	/// @DnDArgument : "expr" "bbox_left + hspeed < 50"
	if(bbox_left + hspeed < 50)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6482B266
		/// @DnDComment : // Set horizontal speed to 0.
		/// @DnDParent : 38D97176
		/// @DnDArgument : "var" "hspeed"
		hspeed = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4ACF38A6
	/// @DnDComment : // If the top of the instance's bounding box is below 50...
	/// @DnDParent : 0AFD5D0C
	/// @DnDArgument : "expr" "bbox_top + vspeed < 50"
	if(bbox_top + vspeed < 50)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5E89A960
		/// @DnDComment : // Set vertical speed to 0.
		/// @DnDParent : 4ACF38A6
		/// @DnDArgument : "var" "vspeed"
		vspeed = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 22E13C29
	/// @DnDComment : // If the bottom of the instance's bounding box is over room_height - 50...
	/// @DnDParent : 0AFD5D0C
	/// @DnDArgument : "expr" "bbox_bottom + vspeed > room_height - 50"
	if(bbox_bottom + vspeed > room_height - 50)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 639F92D2
		/// @DnDComment : // Set vertical speed to 0.
		/// @DnDParent : 22E13C29
		/// @DnDArgument : "var" "vspeed"
		vspeed = 0;
	}
}