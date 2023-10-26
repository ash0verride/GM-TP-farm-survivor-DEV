/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 6BE97C17
/// @DnDComment : Get the distance from this instance to the hero.
/// @DnDArgument : "var" "_distance"
/// @DnDArgument : "value" "point_distance(x, y, obj_hero.x, obj_hero.y)"
var _distance = point_distance(x, y, obj_hero.x, obj_hero.y);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 408EE14A
/// @DnDComment : If we are within 300 pixels,$(13_10)OR we are already moving...
/// @DnDArgument : "expr" "_distance <= 300 || speed > 0"
if(_distance <= 300 || speed > 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 3D289CAB
	/// @DnDComment : Get the direction from this instance to the hero.
	/// @DnDParent : 408EE14A
	/// @DnDArgument : "direction" "point_direction(x, y, obj_hero.x, obj_hero.y)"
	direction = point_direction(x, y, obj_hero.x, obj_hero.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3F83808B
	/// @DnDComment : Set speed increasingly to reach the hero.
	/// @DnDParent : 408EE14A
	/// @DnDArgument : "speed" "0.3"
	/// @DnDArgument : "speed_relative" "1"
	speed += 0.3;
}