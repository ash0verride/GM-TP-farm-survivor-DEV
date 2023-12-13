/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 257C5485
/// @DnDComment : // Draw self, this is the button sprite.
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 79CDB1D0
/// @DnDComment : // Set font.
/// @DnDArgument : "font" "fnt_medium"
/// @DnDSaveInfo : "font" "fnt_medium"
draw_set_font(fnt_medium);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 3B7630A0
/// @DnDComment : // Center align drawn text horizontally and vertically.
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0F89EFBB
/// @DnDComment : // Set color to opaque white.
draw_set_colour($FFFFFFFF & $ffffff);
var l0F89EFBB_0=($FFFFFFFF >> 24);
draw_set_alpha(l0F89EFBB_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1DB5377A
/// @DnDComment : // Draw start text.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "15"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "image_xscale"
/// @DnDArgument : "yscale" "image_yscale"
/// @DnDArgument : "caption" ""START""
/// @DnDArgument : "angle" "image_angle"
draw_text_transformed(x + 0, y + 15, string("START") + "", image_xscale, image_yscale, image_angle);