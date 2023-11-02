/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 550D17CB
/// @DnDComment : // Set color.$(13_10)// This will be a semi-transparent black.
/// @DnDArgument : "color" "$81000000"
draw_set_colour($81000000 & $ffffff);
var l550D17CB_0=($81000000 >> 24);
draw_set_alpha(l550D17CB_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 14D7DE8F
/// @DnDComment : // Draw rectangle filling the screen.
/// @DnDArgument : "x2" "1920"
/// @DnDArgument : "y2" "1080"
/// @DnDArgument : "fill" "1"
draw_rectangle(0, 0, 1920, 1080, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 7829E102
/// @DnDComment : // Set color to opaque white.
draw_set_colour($FFFFFFFF & $ffffff);
var l7829E102_0=($FFFFFFFF >> 24);
draw_set_alpha(l7829E102_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 18165491
/// @DnDComment : // Draw game over banner.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_well_done_banner"
/// @DnDSaveInfo : "sprite" "spr_well_done_banner"
draw_sprite(spr_well_done_banner, 0, x + 0, y + 0);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 147E2048
/// @DnDComment : // Set font.
/// @DnDArgument : "font" "fnt_large"
/// @DnDSaveInfo : "font" "fnt_large"
draw_set_font(fnt_large);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 6B8B3064
/// @DnDComment : // Align drawn text horizontally and vertically.
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 24A43BC5
/// @DnDComment : // Draw game over text.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-10"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""WELL DONE""
draw_text(x + 0, y + -10, string("WELL DONE") + "");

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 295B9FB2
/// @DnDComment : // Set font.
/// @DnDArgument : "font" "fnt_small_medium"
/// @DnDSaveInfo : "font" "fnt_small_medium"
draw_set_font(fnt_small_medium);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 693B87C0
/// @DnDComment : // Draw game over text.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""You have completed the template!""
draw_text(x + 0, y + 30, string("You have completed the template!") + "");

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5EDAE46F
/// @DnDComment : // Set font.
/// @DnDArgument : "font" "fnt_large"
/// @DnDSaveInfo : "font" "fnt_large"
draw_set_font(fnt_large);