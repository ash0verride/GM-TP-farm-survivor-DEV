/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 38173762
/// @DnDComment : // Create variable to hold the text value.
/// @DnDArgument : "expr" ""NO TEXT""
/// @DnDArgument : "var" "text"
text = "NO TEXT";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 11D27332
/// @DnDComment : // Create variable to hold the text color.
/// @DnDArgument : "expr" "c_white"
/// @DnDArgument : "var" "color"
color = c_white;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 38F5C15F
/// @DnDComment : // Create a variable to hold the lifetime of the text.
/// @DnDArgument : "expr" "60"
/// @DnDArgument : "var" "lifetime"
lifetime = 60;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 65D3500B
/// @DnDComment : // Set vertical speed, making the text "float" upwards.
/// @DnDArgument : "speed" "-2"
/// @DnDArgument : "speed_relative" "1"
/// @DnDArgument : "type" "2"
vspeed += -2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0338021B
/// @DnDComment : // Set the depth the a high negative value,$(13_10)// drawing it in front of everything else.
/// @DnDArgument : "expr" "-10000"
/// @DnDArgument : "var" "depth"
depth = -10000;