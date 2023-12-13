/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 13EA9A84
/// @DnDComment : // Draws the upgrade background.
/// @DnDArgument : "x" "1920 / 2"
/// @DnDArgument : "y" "1080 / 2"
/// @DnDArgument : "sprite" "spr_ui_home_screen"
/// @DnDSaveInfo : "sprite" "spr_ui_home_screen"
draw_sprite(spr_ui_home_screen, 0, 1920 / 2, 1080 / 2);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 369B8B24
/// @DnDComment : // Sets the draw colour and alpha.
/// @DnDArgument : "color" "$64000000"
draw_set_colour($64000000 & $ffffff);
var l369B8B24_0=($64000000 >> 24);
draw_set_alpha(l369B8B24_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 2FADF65D
/// @DnDComment : // Draws rectangle over screen.
/// @DnDArgument : "x2" "1920"
/// @DnDArgument : "y2" "1080"
/// @DnDArgument : "fill" "1"
draw_rectangle(0, 0, 1920, 1080, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 3ED22B3F
/// @DnDComment : // Sets the draw colour and alpha.
draw_set_colour($FFFFFFFF & $ffffff);
var l3ED22B3F_0=($FFFFFFFF >> 24);
draw_set_alpha(l3ED22B3F_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 6672DCAD
/// @DnDComment : // Sets the heading font.
/// @DnDArgument : "font" "fnt_large"
/// @DnDSaveInfo : "font" "fnt_large"
draw_set_font(fnt_large);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 438B2E32
/// @DnDComment : // Sets the text alighnment.
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 061EB468
/// @DnDComment : // Draws the heading.
/// @DnDArgument : "x" "1920 / 2"
/// @DnDArgument : "y" "175"
/// @DnDArgument : "caption" ""UPGRADE""
draw_text(1920 / 2, 175, string("UPGRADE") + "");