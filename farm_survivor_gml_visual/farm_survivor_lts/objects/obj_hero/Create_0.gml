/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0CAEBFE4
/// @DnDComment : Set the maximum hitpoints that the player can have.
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "var" "hitpoints_max"
hitpoints_max = 10;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2679ED67
/// @DnDComment : Set the starting hitpoints of the player (to the max).
/// @DnDArgument : "expr" "hitpoints_max"
/// @DnDArgument : "var" "hitpoints"
hitpoints = hitpoints_max;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6EC4DE21
/// @DnDComment : Variables for tracking enemies.
/// @DnDInput : 2
/// @DnDArgument : "expr" "undefined"
/// @DnDArgument : "expr_1" "1000"
/// @DnDArgument : "var" "nearest_enemy"
/// @DnDArgument : "var_1" "nearest_distance"
nearest_enemy = undefined;
nearest_distance = 1000;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 13EBF4EA
/// @DnDComment : Start alarm for the shooting weapon.
alarm_set(0, 30);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 700B9980
/// @DnDComment : Start alarm for the swipe weapon.
/// @DnDArgument : "alarm" "1"
alarm_set(1, 30);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5101BDB8
/// @DnDComment : Start alarm for the trail weapon.
/// @DnDArgument : "alarm" "2"
alarm_set(2, 30);