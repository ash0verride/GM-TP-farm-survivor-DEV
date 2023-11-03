/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40D9AE0E
/// @DnDComment : // Checks if the game is not paused to update.
/// @DnDArgument : "var" "global.paused"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(global.paused == true))
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 572FEDC2
	/// @DnDComment : // Get the distance from this instance to the hero.
	/// @DnDParent : 40D9AE0E
	/// @DnDArgument : "var" "_distance"
	/// @DnDArgument : "value" "point_distance(x, y, obj_hero.x, obj_hero.y)"
	var _distance = point_distance(x, y, obj_hero.x, obj_hero.y);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7FECEA44
	/// @DnDComment : // If we are within 300 pixels,$(13_10)// OR we are already moving...
	/// @DnDParent : 40D9AE0E
	/// @DnDArgument : "expr" "_distance <= 300 || speed > 0"
	if(_distance <= 300 || speed > 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
		/// @DnDVersion : 1
		/// @DnDHash : 119637C5
		/// @DnDComment : // Get the direction from this instance to the hero.
		/// @DnDParent : 7FECEA44
		/// @DnDArgument : "direction" "point_direction(x, y, obj_hero.x, obj_hero.y)"
		direction = point_direction(x, y, obj_hero.x, obj_hero.y);
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 712113EC
		/// @DnDComment : // Set speed increasingly to reach the hero.
		/// @DnDParent : 7FECEA44
		/// @DnDArgument : "speed" "0.3"
		/// @DnDArgument : "speed_relative" "1"
		speed += 0.3;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0BEF9778
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1C3338E0
	/// @DnDComment : // Sets the speed to zero.
	/// @DnDParent : 0BEF9778
	speed = 0;
}