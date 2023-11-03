/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 651A7C73
/// @DnDComment : // Checks no menus are showing.
/// @DnDInput : 4
/// @DnDArgument : "expr" "instance_exists(obj_pause_screen)"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "expr_1" "instance_exists(obj_upgrade_screen)"
/// @DnDArgument : "not_1" "1"
/// @DnDArgument : "expr_2" "instance_exists(obj_game_over)"
/// @DnDArgument : "not_2" "1"
/// @DnDArgument : "expr_3" "instance_exists(obj_template_complete)"
/// @DnDArgument : "not_3" "1"
if(!(instance_exists(obj_pause_screen)) && !(instance_exists(obj_upgrade_screen)) && !(instance_exists(obj_game_over)) && !(instance_exists(obj_template_complete)))
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 257C5485
	/// @DnDComment : Draw self.
	/// @DnDParent : 651A7C73
	draw_self();
}