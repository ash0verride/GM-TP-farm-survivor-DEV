/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 07F7C403
/// @DnDComment : Draw the back of the healthbar.
/// @DnDArgument : "x" "-50"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "5"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "100 / 29"
/// @DnDArgument : "yscale" "26 / 26"
/// @DnDArgument : "sprite" "spr_healthbar_back"
/// @DnDSaveInfo : "sprite" "spr_healthbar_back"
draw_sprite_ext(spr_healthbar_back, 0, x + -50, y + 5, 100 / 29, 26 / 26, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 023B5A24
/// @DnDComment : Draw the healthbar "filling".
/// @DnDArgument : "x" "-50 + 4"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "5 + 4"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "((100 - 8) / 23) * (hitpoints / hitpoints_max)"
/// @DnDArgument : "yscale" "(26 - 8) / 20"
/// @DnDArgument : "sprite" "spr_healthbar_fill"
/// @DnDSaveInfo : "sprite" "spr_healthbar_fill"
draw_sprite_ext(spr_healthbar_fill, 0, x + -50 + 4, y + 5 + 4, ((100 - 8) / 23) * (hitpoints / hitpoints_max), (26 - 8) / 20, 0, $FFFFFF & $ffffff, 1);