/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0AFD5D0C
/// @DnDComment : Declare a function to keep an instance in the room.
/// @DnDArgument : "funcName" "keep_in_room"
function keep_in_room() 
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 38D97176
	/// @DnDComment : If the left of the instance's bounding box is below 50...
	/// @DnDParent : 0AFD5D0C
	/// @DnDArgument : "expr" "bbox_left < 50"
	if(bbox_left < 50)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6482B266
		/// @DnDComment : Set x to place the instance 50 pixels from the left of the room.
		/// @DnDParent : 38D97176
		/// @DnDArgument : "expr" "50 - bbox_left"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "x"
		x += 50 - bbox_left;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1332F599
	/// @DnDComment : If the right of the instance's bounding box is over room_width - 50...
	/// @DnDParent : 0AFD5D0C
	/// @DnDArgument : "expr" "bbox_right > room_width - 50"
	if(bbox_right > room_width - 50)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53B8894F
		/// @DnDComment : Set x to place the instance 50 pixels from the right of the room.
		/// @DnDParent : 1332F599
		/// @DnDArgument : "expr" "(room_width - 50) - bbox_right"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "x"
		x += (room_width - 50) - bbox_right;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4ACF38A6
	/// @DnDComment : If the top of the instance's bounding box is below 50...
	/// @DnDParent : 0AFD5D0C
	/// @DnDArgument : "expr" "bbox_top < 50"
	if(bbox_top < 50)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5E89A960
		/// @DnDComment : Set y to place the instance 50 pixels from the top of the room.
		/// @DnDParent : 4ACF38A6
		/// @DnDArgument : "expr" "50 - bbox_top"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "y"
		y += 50 - bbox_top;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 22E13C29
	/// @DnDComment : If the bottom of the instance's bounding box is over room_height - 50...
	/// @DnDParent : 0AFD5D0C
	/// @DnDArgument : "expr" "bbox_bottom > room_height - 50"
	if(bbox_bottom > room_height - 50)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 639F92D2
		/// @DnDComment : Set y to place the instance 50 pixels from the bottom of the room.
		/// @DnDParent : 22E13C29
		/// @DnDArgument : "expr" "(room_height - 50) - bbox_bottom"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "y"
		y += (room_height - 50) - bbox_bottom;
	}
}