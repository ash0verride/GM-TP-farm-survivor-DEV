/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 66839484
/// @DnDComment : // Call parent event to set up general eney stuff.
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4A483574
/// @DnDComment : // Set animation speed.
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "image_speed"
image_speed = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 44BC1AA0
/// @DnDComment : // Set max hitpoints specifically for this enemy type.
/// @DnDArgument : "expr" "3 * global.enemy_health_bonus"
/// @DnDArgument : "var" "hitpoints_max"
hitpoints_max = 3 * global.enemy_health_bonus;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 54B0C620
/// @DnDComment : // Set hitpoints specifically for this enemy type.
/// @DnDArgument : "expr" "hitpoints_max"
/// @DnDArgument : "var" "hitpoints"
hitpoints = hitpoints_max;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 481C1897
/// @DnDComment : // Set sprites for this enemy type.
/// @DnDInput : 3
/// @DnDArgument : "expr" "spr_pigun_walk"
/// @DnDArgument : "expr_1" "spr_pigun_attack"
/// @DnDArgument : "expr_2" "spr_pigun_hit"
/// @DnDArgument : "var" "walk_sprite"
/// @DnDArgument : "var_1" "attack_sprite"
/// @DnDArgument : "var_2" "hit_sprite"
walk_sprite = spr_pigun_walk;
attack_sprite = spr_pigun_attack;
hit_sprite = spr_pigun_hit;