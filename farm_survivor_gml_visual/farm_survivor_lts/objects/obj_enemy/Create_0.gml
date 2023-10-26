/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 600742E5
/// @DnDComment : Create variable for max hitpoints.
/// @DnDArgument : "expr" "2 * global.enemy_health_bonus"
/// @DnDArgument : "var" "hitpoints_max"
hitpoints_max = 2 * global.enemy_health_bonus;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3D3354CC
/// @DnDComment : Create variable for hitpoints.
/// @DnDArgument : "expr" "hitpoints_max"
/// @DnDArgument : "var" "hitpoints"
hitpoints = hitpoints_max;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 658BA7F1
/// @DnDComment : Set speed.
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "var" "speed"
speed = 4;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 7880F5DC
/// @DnDComment : Set image scale.
/// @DnDArgument : "xscale" "0.5"
/// @DnDArgument : "yscale" "0.5"
image_xscale = 0.5;
image_yscale = 0.5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6328E651
/// @DnDComment : Create variable to show/hide the healthbar.
/// @DnDArgument : "var" "show_healthbar"
show_healthbar = 0;