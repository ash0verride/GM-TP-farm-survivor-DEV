/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 5F152F01
/// @DnDComment : // Call parent event to set up general eney stuff.
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6D445BB7
/// @DnDComment : // Set speed for this enemy type.
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "speed"
speed = 2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6751D9DF
/// @DnDComment : // Set animation speed.
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "image_speed"
image_speed = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 588928BF
/// @DnDComment : // Set sprites for this enemy type.
/// @DnDInput : 3
/// @DnDArgument : "expr" "spr_rooster_walk"
/// @DnDArgument : "expr_1" "spr_rooster_attack"
/// @DnDArgument : "expr_2" "spr_rooster_hit"
/// @DnDArgument : "var" "walk_sprite"
/// @DnDArgument : "var_1" "attack_sprite"
/// @DnDArgument : "var_2" "hit_sprite"
walk_sprite = spr_rooster_walk;
attack_sprite = spr_rooster_attack;
hit_sprite = spr_rooster_hit;