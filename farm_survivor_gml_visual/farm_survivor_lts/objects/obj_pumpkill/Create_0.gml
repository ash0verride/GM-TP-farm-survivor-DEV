/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 5F152F01
/// @DnDComment : // Call parent event to set up general eney stuff.
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 14394782
/// @DnDComment : // Set speed for this enemy type.
/// @DnDArgument : "expr" "6"
/// @DnDArgument : "var" "speed"
speed = 6;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4FF14758
/// @DnDComment : // Set animation speed.
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "image_speed"
image_speed = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 24C29B42
/// @DnDComment : // Set max hitpoints for this enemy type.
/// @DnDArgument : "expr" "1 * global.enemy_health_bonus"
/// @DnDArgument : "var" "hitpoints_max"
hitpoints_max = 1 * global.enemy_health_bonus;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 033A059E
/// @DnDComment : // Set hitpoints.
/// @DnDArgument : "expr" "hitpoints_max"
/// @DnDArgument : "var" "hitpoints"
hitpoints = hitpoints_max;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 588928BF
/// @DnDComment : // Set sprites for this enemy type.
/// @DnDInput : 3
/// @DnDArgument : "expr" "spr_pumpkill_walk"
/// @DnDArgument : "expr_1" "spr_pumpkill_attack"
/// @DnDArgument : "expr_2" "spr_pumpkill_hit"
/// @DnDArgument : "var" "walk_sprite"
/// @DnDArgument : "var_1" "attack_sprite"
/// @DnDArgument : "var_2" "hit_sprite"
walk_sprite = spr_pumpkill_walk;
attack_sprite = spr_pumpkill_attack;
hit_sprite = spr_pumpkill_hit;