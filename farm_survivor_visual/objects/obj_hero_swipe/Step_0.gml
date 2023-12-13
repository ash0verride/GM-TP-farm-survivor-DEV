/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0E29F2D7
/// @DnDComment : // If the hero exists...
/// @DnDArgument : "obj" "obj_hero"
/// @DnDSaveInfo : "obj" "obj_hero"
var l0E29F2D7_0 = false;
l0E29F2D7_0 = instance_exists(obj_hero);
if(l0E29F2D7_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 2B59D8C6
	/// @DnDComment : // Jump to the hero, essentially locking$(13_10)// our position to the hero position.
	/// @DnDParent : 0E29F2D7
	/// @DnDArgument : "x" "obj_hero.x"
	/// @DnDArgument : "y" "obj_hero.y"
	x = obj_hero.x;
	y = obj_hero.y;
}