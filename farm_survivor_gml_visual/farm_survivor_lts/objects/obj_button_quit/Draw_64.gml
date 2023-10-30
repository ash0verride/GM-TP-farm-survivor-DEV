/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 711657FE
/// @DnDComment : Set frame
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "image_index"
image_index = 1;

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 257C5485
/// @DnDComment : Draw self, this is the button sprite.
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 5D956946
/// @DnDComment : Draw the exit icon.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_exit_button"
/// @DnDArgument : "image" "image_index"
/// @DnDSaveInfo : "sprite" "spr_exit_button"
draw_sprite(spr_exit_button, image_index, x + 0, y + 0);