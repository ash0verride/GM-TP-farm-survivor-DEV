/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4829C00C
/// @DnDComment : // If the hero is NOT currently being hit...
/// @DnDArgument : "expr" "sprite_index == spr_hero_hit"
/// @DnDArgument : "not" "1"
if(!(sprite_index == spr_hero_hit))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7C049B28
	/// @DnDComment : // Reduce hitpoints.
	/// @DnDParent : 4829C00C
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hitpoints"
	hitpoints += -1;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5478AAD7
	/// @DnDComment : // Create a text popup.
	/// @DnDParent : 4829C00C
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "_text"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_text_popup"
	/// @DnDArgument : "layer" ""UpgradeScreen""
	/// @DnDSaveInfo : "objectid" "obj_text_popup"
	var _text = instance_create_layer(x + 0, y + 0, "UpgradeScreen", obj_text_popup);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 131E32E6
	/// @DnDComment : // Set text for popup.
	/// @DnDParent : 4829C00C
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "_text.text"
	_text.text = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 11DBAE21
	/// @DnDComment : // Set colour for popup.
	/// @DnDParent : 4829C00C
	/// @DnDArgument : "expr" "c_red"
	/// @DnDArgument : "var" "_text.color"
	_text.color = c_red;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0917E95F
	/// @DnDComment : // Change sprite index to hit.$(13_10)// Reset image index.
	/// @DnDParent : 4829C00C
	/// @DnDArgument : "spriteind" "spr_hero_hit"
	/// @DnDSaveInfo : "spriteind" "spr_hero_hit"
	sprite_index = spr_hero_hit;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 066A39DE
	/// @DnDComment : // With the enemy...
	/// @DnDApplyTo : other
	/// @DnDParent : 4829C00C
	with(other) {
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 212FAAD3
		/// @DnDComment : // Check if enemy is walking pigun.
		/// @DnDParent : 066A39DE
		/// @DnDArgument : "expr" "sprite_index == spr_pigun_walk"
		if(sprite_index == spr_pigun_walk)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 20085615
			/// @DnDComment : // Change to attack sprite.$(13_10)// Reset image index.
			/// @DnDParent : 212FAAD3
			/// @DnDArgument : "spriteind" "attack_sprite"
			sprite_index = attack_sprite;
			image_index = 0;
		}
	}
}