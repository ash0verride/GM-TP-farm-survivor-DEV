/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 49924FA7
/// @DnDComment : Get direction from this instance to the other.
/// @DnDArgument : "var" "_direction"
/// @DnDArgument : "value" "point_direction(x, y, other.x, other.y)"
var _direction = point_direction(x, y, other.x, other.y);

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 26953C42
/// @DnDComment : Push away from the other instance.
/// @DnDArgument : "x" "lengthdir_x(-1, _direction)"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "lengthdir_y(-1, _direction)"
/// @DnDArgument : "y_relative" "1"
x += lengthdir_x(-1, _direction);
y += lengthdir_y(-1, _direction);