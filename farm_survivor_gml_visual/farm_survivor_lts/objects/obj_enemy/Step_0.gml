/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 648EDC10
/// @DnDComment : // Set depth to negative y.$(13_10)$(13_10)// This will cause instances to draw from$(13_10)// top to bottom.
/// @DnDArgument : "expr" "-y"
/// @DnDArgument : "var" "depth"
depth = -y;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 01E4C311
/// @DnDComment : // Set direction towards the hero.
/// @DnDArgument : "x" "obj_hero.x"
/// @DnDArgument : "y" "obj_hero.y"
direction = point_direction(x, y, obj_hero.x, obj_hero.y);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 72C46D59
/// @DnDComment : // If horizontal speed is NOT 0.
/// @DnDArgument : "expr" "hspeed != 0"
if(hspeed != 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 38D25C64
	/// @DnDComment : // Set our xscale to the sign of hspeed$(13_10)// (can only be -1 or 1 at this point).
	/// @DnDParent : 72C46D59
	/// @DnDArgument : "xscale" "-sign(hspeed)"
	image_xscale = -sign(hspeed);
	image_yscale = 1;
}