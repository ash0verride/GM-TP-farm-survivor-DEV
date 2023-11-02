/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 65A75D93
/// @DnDComment : // Checks if glow highlight should show.
/// @DnDArgument : "expr" "mouse_over"
if(mouse_over)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4F4CDA04
	/// @DnDComment : // Draws the glow highlight.
	/// @DnDParent : 65A75D93
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_card_glow"
	/// @DnDSaveInfo : "sprite" "spr_card_glow"
	draw_sprite(spr_card_glow, 0, x + 0, y + 0);
}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 741089D8
/// @DnDComment : // Draws the upgrade object.
draw_self();

/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 28687F9D
/// @DnDComment : // Checks if the upgrade has been set.
/// @DnDArgument : "var" "upgrade_data"
if(upgrade_data == undefined)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 03F0DC73
	/// @DnDComment : // Exits the event.
	/// @DnDParent : 28687F9D
	exit;
}

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 36D68BFD
/// @DnDComment : // Set the upgrade font.
/// @DnDArgument : "font" "fnt_medium"
/// @DnDSaveInfo : "font" "fnt_medium"
draw_set_font(fnt_medium);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 56AF297D
/// @DnDComment : // Set the font colour and alpha.
/// @DnDArgument : "color" "$ff41d7ff"
draw_set_colour($ff41d7ff & $ffffff);
var l56AF297D_0=($ff41d7ff >> 24);
draw_set_alpha(l56AF297D_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 42B33F98
/// @DnDComment : // Draw the upgrade text.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "185"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "upgrade_data[? "title"]"
draw_text(x + 0, y + 185, string(upgrade_data[? "title"]) + "");

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 16492A1B
/// @DnDComment : // Set the font colour and alpha.
draw_set_colour($FFFFFFFF & $ffffff);
var l16492A1B_0=($FFFFFFFF >> 24);
draw_set_alpha(l16492A1B_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 08B3958D
/// @DnDComment : // Set the upgrade font.
/// @DnDArgument : "font" "fnt_card_name"
/// @DnDSaveInfo : "font" "fnt_card_name"
draw_set_font(fnt_card_name);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 178510E6
/// @DnDComment : // Draw the upgrade text.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-50"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "upgrade_data[? "weapon_name"]"
draw_text(x + 0, y + -50, string(upgrade_data[? "weapon_name"]) + "");

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 6F8E810F
/// @DnDComment : // Set the upgrade font.
/// @DnDArgument : "font" "fnt_card_description"
/// @DnDSaveInfo : "font" "fnt_card_description"
draw_set_font(fnt_card_description);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6045EB6F
/// @DnDComment : // Draw the upgrade text.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "+40"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "upgrade_data[? "description"]"
draw_text(x + 0, y + +40, string(upgrade_data[? "description"]) + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 763A2A41
/// @DnDComment : // Draw the upgrade icon.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-200"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "upgrade_data[? "icon"]"
draw_sprite(upgrade_data[? "icon"], 0, x + 0, y + -200);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 062DE59A
/// @DnDComment : // Set draw alpha.
/// @DnDArgument : "alpha" "roll_alpha"
draw_set_alpha(roll_alpha);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6F3D916A
/// @DnDComment : // Draw sprite.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_upgrade_hide"
/// @DnDSaveInfo : "sprite" "spr_upgrade_hide"
draw_sprite(spr_upgrade_hide, 0, x + 0, y + 0);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 60858F02
/// @DnDComment : // Set draw alpha.
draw_set_alpha(1);