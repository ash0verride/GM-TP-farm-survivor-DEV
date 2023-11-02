/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6A98B272
/// @DnDComment : // Checks if the game is paused.
/// @DnDArgument : "var" "global.paused"
/// @DnDArgument : "value" "true"
if(global.paused == true)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0FADE5B8
	/// @DnDComment : // Draw our sprite.
	/// @DnDParent : 6A98B272
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "sprite_index"
	draw_sprite(sprite_index, 0, x + 0, y + 0);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0BE2CAFF
else
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4D7FA550
	/// @DnDComment : // Draw our sprite.$(13_10)// Note that we add the sine of current_time$(13_10)// to create a bobbing/floating effect.
	/// @DnDParent : 0BE2CAFF
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "sin(current_time / 100) * 10"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "sprite_index"
	draw_sprite(sprite_index, 0, x + 0, y + sin(current_time / 100) * 10);
}