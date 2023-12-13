/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 34C67E9B
/// @DnDComment : // Get direction from this instance to the other.
/// @DnDArgument : "var" "_direction"
/// @DnDArgument : "value" "point_direction(x, y, other.x, other.y)"
var _direction = point_direction(x, y, other.x, other.y);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2BDDD42F
/// @DnDComment : // Push away from the other instance.
/// @DnDInput : 2
/// @DnDArgument : "expr" "lengthdir_x(-1, _direction)"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "lengthdir_y(-1, _direction)"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x += lengthdir_x(-1, _direction);
y += lengthdir_y(-1, _direction);