/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 711657FE
/// @DnDComment : // Set frame based on current volume.
/// @DnDArgument : "expr" "audio_get_master_gain(0) > 0"
/// @DnDArgument : "var" "image_index"
image_index = audio_get_master_gain(0) > 0;

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 257C5485
/// @DnDComment : // Draw self, this is the button sprite.
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 4EA851D8
/// @DnDComment : // Draw the little speaker icon.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "image_xscale"
/// @DnDArgument : "yscale" "image_yscale"
/// @DnDArgument : "rot" "image_angle"
/// @DnDArgument : "alpha" "image_alpha"
/// @DnDArgument : "sprite" "spr_sound_button"
/// @DnDArgument : "frame" "image_index"
/// @DnDSaveInfo : "sprite" "spr_sound_button"
draw_sprite_ext(spr_sound_button, image_index, x + 0, y + 0, image_xscale, image_yscale, image_angle, $FFFFFF & $ffffff, image_alpha);