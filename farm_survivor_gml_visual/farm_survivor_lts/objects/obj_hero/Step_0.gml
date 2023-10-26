/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 565A358A
/// @DnDComment : If the game is paused...
/// @DnDArgument : "expr" "global.paused"
if(global.paused)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 42F2706D
	/// @DnDComment : Increment our weapon cooldown timers$(13_10)so that they don't trigger while we're$(13_10)paused.
	/// @DnDInput : 3
	/// @DnDParent : 565A358A
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "steps_relative" "1"
	/// @DnDArgument : "steps_1" "1"
	/// @DnDArgument : "steps_relative_1" "1"
	/// @DnDArgument : "steps_2" "1"
	/// @DnDArgument : "steps_relative_2" "1"
	/// @DnDArgument : "alarm_1" "1"
	/// @DnDArgument : "alarm_2" "2"
	alarm_set(0, 1 + alarm_get(0));
	alarm_set(1, 1 + alarm_get(1));
	alarm_set(2, 1 + alarm_get(2));

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 5BA6C54A
	/// @DnDComment : Exit this event while paused.
	/// @DnDParent : 565A358A
	exit;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2D9E0552
/// @DnDArgument : "expr" "instance_exists(obj_upgrade) || instance_exists(obj_template_complete)"
if(instance_exists(obj_upgrade) || instance_exists(obj_template_complete))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0BE9F742
	/// @DnDComment : Stop moving the hero.
	/// @DnDParent : 2D9E0552
	speed = 0;

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 0191B94C
	/// @DnDComment : Exit event while on upgrade screen.
	/// @DnDParent : 2D9E0552
	exit;
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6FE7A4AC
/// @DnDComment : Execute player movement function.
/// @DnDArgument : "function" "player_movement"
player_movement();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 3282FD1C
/// @DnDComment : Execute function that keeps the player in the room.
/// @DnDArgument : "function" "keep_in_room"
keep_in_room();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6587F53A
/// @DnDComment : Set depth to minus our y position.$(13_10)This is also done in enemies, with the$(13_10)result being instances higher up on the screen$(13_10)being drawn first.
/// @DnDArgument : "expr" "-y"
/// @DnDArgument : "var" "depth"
depth = -y;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2428647F
/// @DnDComment : Find the nearest enemy.$(13_10)And reset the distance to some high number.
/// @DnDInput : 2
/// @DnDArgument : "expr" "instance_nearest(x, y, obj_enemy)"
/// @DnDArgument : "expr_1" "1000"
/// @DnDArgument : "var" "nearest_enemy"
/// @DnDArgument : "var_1" "nearest_distance"
nearest_enemy = instance_nearest(x, y, obj_enemy);
nearest_distance = 1000;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 29BAE14F
/// @DnDComment : If an enemy instance is found.
/// @DnDArgument : "expr" "nearest_enemy"
if(nearest_enemy)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F5E8FFC
	/// @DnDComment : Get the distance to that enemy.
	/// @DnDParent : 29BAE14F
	/// @DnDArgument : "expr" "point_distance(x, y, nearest_enemy.x, nearest_enemy.y)"
	/// @DnDArgument : "var" "nearest_distance"
	nearest_distance = point_distance(x, y, nearest_enemy.x, nearest_enemy.y);
}