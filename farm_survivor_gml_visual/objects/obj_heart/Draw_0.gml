/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1398B2D2
/// @DnDComment : // Checks if the game is paused.
/// @DnDArgument : "var" "global.paused"
/// @DnDArgument : "value" "true"
if(global.paused == true)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 48CEE2B0
	/// @DnDComment : // Draw our sprite.
	/// @DnDParent : 1398B2D2
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "sprite_index"
	draw_sprite(sprite_index, 0, x + 0, y + 0);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 49E134FF
else
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5ACB2969
	/// @DnDComment : // Draw our sprite.$(13_10)$(13_10)// Note that we add the sine of current_time$(13_10)// to create a bobbing/floating effect.
	/// @DnDParent : 49E134FF
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "sin(current_time / 100) * 10"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "sprite_index"
	draw_sprite(sprite_index, 0, x + 0, y + sin(current_time / 100) * 10);
}