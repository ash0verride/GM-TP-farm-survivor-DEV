/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 21654BF1
/// @DnDComment : // If the hero exists...
/// @DnDArgument : "obj" "obj_hero"
/// @DnDSaveInfo : "obj" "obj_hero"
var l21654BF1_0 = false;
l21654BF1_0 = instance_exists(obj_hero);
if(l21654BF1_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 02A126C1
	/// @DnDComment : // Jump to the hero, essentially locking$(13_10)// our position to the hero position.
	/// @DnDParent : 21654BF1
	/// @DnDArgument : "x" "obj_hero.x"
	/// @DnDArgument : "y" "obj_hero.y"
	x = obj_hero.x;
	y = obj_hero.y;
}