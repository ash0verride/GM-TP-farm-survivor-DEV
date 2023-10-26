/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 48BA5A38
/// @DnDArgument : "expr" "speed > 0"
if(speed > 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6C4525BE
	/// @DnDParent : 48BA5A38
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_hero_run"
	/// @DnDSaveInfo : "spriteind" "spr_hero_run"
	sprite_index = spr_hero_run;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3CA6151C
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0BA73861
	/// @DnDParent : 3CA6151C
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_hero_idle"
	/// @DnDSaveInfo : "spriteind" "spr_hero_idle"
	sprite_index = spr_hero_idle;
	image_index += 0;
}