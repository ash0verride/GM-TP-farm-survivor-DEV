/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 0D46E4B5
/// @DnDComment : Draw shadow under the sprite.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_shadow"
/// @DnDSaveInfo : "sprite" "spr_shadow"
draw_sprite_ext(spr_shadow, 0, x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 24ABEFA4
/// @DnDComment : Draw our sprite.
draw_self();