/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6A894E0E
/// @DnDComment : // Set the drawing color to white.
draw_set_colour($FFFFFFFF & $ffffff);
var l6A894E0E_0=($FFFFFFFF >> 24);
draw_set_alpha(l6A894E0E_0 / $ff);

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 64E7A290
/// @DnDComment : // If an instance of obj_upgrade exists then$(13_10)// that means we are on the upgrade screen...
/// @DnDArgument : "obj" "obj_game_over"
/// @DnDSaveInfo : "obj" "obj_game_over"
var l64E7A290_0 = false;
l64E7A290_0 = instance_exists(obj_game_over);
if(l64E7A290_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 3A865879
	/// @DnDComment : // Exit event, so we don't render the HUD.
	/// @DnDParent : 64E7A290
	exit;
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 67C3CE8F
/// @DnDComment : // If the upgrade screen is open...
/// @DnDArgument : "obj" "obj_upgrade"
/// @DnDSaveInfo : "obj" "obj_upgrade"
var l67C3CE8F_0 = false;
l67C3CE8F_0 = instance_exists(obj_upgrade);
if(l67C3CE8F_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 32FFAA86
	/// @DnDComment : // Exit event, so we don't render the HUD.
	/// @DnDParent : 67C3CE8F
	exit;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 25F9AF30
/// @DnDComment : // Draw the shooting weapon icon, using the "unlocked"$(13_10)// property of the shooting weapon.
/// @DnDArgument : "x" "40"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "sprite" "spr_shooting_attack_small"
/// @DnDArgument : "image" "global.shooting[? "unlocked"]"
/// @DnDSaveInfo : "sprite" "spr_shooting_attack_small"
draw_sprite(spr_shooting_attack_small, global.shooting[? "unlocked"], 40, 20);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0831FA3F
/// @DnDComment : // Draw the trail weapon icon, using the "unlocked"$(13_10)// property of the trail weapon.
/// @DnDArgument : "x" "40 + 120"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "sprite" "spr_trail_attack_small"
/// @DnDArgument : "image" "global.trail[? "unlocked"]"
/// @DnDSaveInfo : "sprite" "spr_trail_attack_small"
draw_sprite(spr_trail_attack_small, global.trail[? "unlocked"], 40 + 120, 20);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 27919FF6
/// @DnDComment : // Draw the swipe weapon icon, using the "unlocked"$(13_10)// property of the swipe weapon.
/// @DnDArgument : "x" "40 + 240"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "sprite" "spr_arcing_attack_small"
/// @DnDArgument : "image" "global.swipe[? "unlocked"]"
/// @DnDSaveInfo : "sprite" "spr_arcing_attack_small"
draw_sprite(spr_arcing_attack_small, global.swipe[? "unlocked"], 40 + 240, 20);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 28D5C6DB
/// @DnDComment : // Draw the back of the experience bar.
/// @DnDArgument : "x" "400"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "xscale" "1120 / 65"
/// @DnDArgument : "sprite" "spr_xpbar_back"
/// @DnDSaveInfo : "sprite" "spr_xpbar_back"
draw_sprite_ext(spr_xpbar_back, 0, 400, 30, 1120 / 65, 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 45D3CF88
/// @DnDComment : // Get how much the bar should be filled.
/// @DnDArgument : "var" "_fill"
/// @DnDArgument : "value" "min(global.xp / global.xp_goal, 1)"
var _fill = min(global.xp / global.xp_goal, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1BD30001
/// @DnDComment : // Draw the experince bar filling.
/// @DnDArgument : "x" "407"
/// @DnDArgument : "y" "37"
/// @DnDArgument : "xscale" "(1172 / 54) * _fill"
/// @DnDArgument : "sprite" "spr_xpbar_fill"
/// @DnDSaveInfo : "sprite" "spr_xpbar_fill"
draw_sprite_ext(spr_xpbar_fill, 0, 407, 37, (1172 / 54) * _fill, 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 3FF11531
/// @DnDComment : // Set the font.
/// @DnDArgument : "font" "fnt_small"
/// @DnDSaveInfo : "font" "fnt_small"
draw_set_font(fnt_small);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0759848B
/// @DnDComment : // Center the text vertically and horizontally.
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 550610C1
/// @DnDComment : // Draw our current level.
/// @DnDArgument : "x" "1450"
/// @DnDArgument : "y" "65"
/// @DnDArgument : "caption" ""LV: ""
/// @DnDArgument : "var" "global.level"
draw_text(1450, 65, string("LV: ") + string(global.level));