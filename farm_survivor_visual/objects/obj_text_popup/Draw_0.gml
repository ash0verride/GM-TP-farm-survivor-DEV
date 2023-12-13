/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 5CA735FC
/// @DnDComment : // Set the color of the popup text.
/// @DnDArgument : "color" "color"
/// @DnDArgument : "alpha" "false"
draw_set_colour(color & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 3D6FF191
/// @DnDComment : // Sets the alpha for the text.
/// @DnDArgument : "alpha" "image_alpha"
draw_set_alpha(image_alpha);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 69EC8B1E
/// @DnDComment : // Sets the texts font.
/// @DnDArgument : "font" "fnt_small"
/// @DnDSaveInfo : "font" "fnt_small"
draw_set_font(fnt_small);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 202CCC9A
/// @DnDComment : // Draw the text.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "abs(floor(text * 100))"
draw_text(x + 0, y + 0, string("") + string(abs(floor(text * 100))));

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 23E71A2F
/// @DnDComment : // Reset the draw alpha.
draw_set_alpha(1);