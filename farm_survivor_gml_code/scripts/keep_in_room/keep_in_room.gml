// Declare a function to keep an instance in the room.
function keep_in_room() 
{
	// If the left of the instance's bounding box is below 50...
	if(bbox_left < 50)
	{
		// Set x to place the instance 50 pixels from the left of the room.
		x += 50 - bbox_left;
	}

	// If the right of the instance's bounding box is over room_width - 50...
	if(bbox_right > room_width - 50)
	{
		// Set x to place the instance 50 pixels from the right of the room.
		x += (room_width - 50) - bbox_right;
	}

	// If the top of the instance's bounding box is below 50...
	if(bbox_top < 50)
	{
		// Set y to place the instance 50 pixels from the top of the room.
		y += 50 - bbox_top;
	}

	// If the bottom of the instance's bounding box is over room_height - 50...
	if(bbox_bottom > room_height - 50)
	{
		// Set y to place the instance 50 pixels from the bottom of the room.
		y += (room_height - 50) - bbox_bottom;
	}
}