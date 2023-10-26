/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 5CA735FC
/// @DnDComment : Set the color of the popup text.
/// @DnDArgument : "color" "color"
/// @DnDArgument : "alpha" "false"
draw_set_colour(color & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 202CCC9A
/// @DnDComment : Draw the text.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "abs(floor(text * 100))"
draw_text(x + 0, y + 0, string("") + string(abs(floor(text * 100))));