/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1BB12534
/// @DnDComment : Draw shadow under this instance.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.5"
/// @DnDArgument : "yscale" "0.5"
/// @DnDArgument : "sprite" "spr_shadow"
/// @DnDSaveInfo : "sprite" "spr_shadow"
draw_sprite_ext(spr_shadow, 0, x + 0, y + 0, 0.5, 0.5, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0FADE5B8
/// @DnDComment : Draw our sprite.$(13_10)$(13_10)Note that we add the sine of current_time$(13_10)to create a bobbing/floating effect.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "sin(current_time / 100) * 10"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "sprite_index"
draw_sprite(sprite_index, 0, x + 0, y + sin(current_time / 100) * 10);