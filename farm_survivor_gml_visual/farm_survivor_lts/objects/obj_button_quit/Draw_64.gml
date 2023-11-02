/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 711657FE
/// @DnDComment : // Set frame.
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "image_index"
image_index = 1;

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 257C5485
/// @DnDComment : // Draw self, this is the button sprite.
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 0E5C9941
/// @DnDComment : // Draw the exit icon.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "image_xscale"
/// @DnDArgument : "yscale" "image_yscale"
/// @DnDArgument : "rot" "image_angle"
/// @DnDArgument : "alpha" "image_alpha"
/// @DnDArgument : "sprite" "spr_exit_button"
/// @DnDSaveInfo : "sprite" "spr_exit_button"
draw_sprite_ext(spr_exit_button, 0, x + 0, y + 0, image_xscale, image_yscale, image_angle, $FFFFFF & $ffffff, image_alpha);