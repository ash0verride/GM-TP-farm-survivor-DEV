/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6752F637
/// @DnDComment : // If hitpoints are over zero...
/// @DnDArgument : "expr" "hitpoints > 0"
if(hitpoints > 0)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 74322F8E
	/// @DnDComment : // Choose a random shooting sound effect.
	/// @DnDInput : 2
	/// @DnDParent : 6752F637
	/// @DnDArgument : "var" "_sound"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "snd_lightning_impact_1"
	/// @DnDArgument : "option_1" "snd_lightning_impact_2"
	var _sound = choose(snd_lightning_impact_1, snd_lightning_impact_2);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 2C5DF69B
	/// @DnDComment : Play the chosen sound.
	/// @DnDParent : 6752F637
	/// @DnDArgument : "soundid" "_sound"
	audio_play_sound(_sound, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3E5EDB98
	/// @DnDComment : // Destroy the other instance (the bullet)
	/// @DnDApplyTo : other
	/// @DnDParent : 6752F637
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35485919
	/// @DnDComment : // Set the healthbar timer to 60.$(13_10)$(13_10)// Causing the healthbar to show for 60 game steps.
	/// @DnDParent : 6752F637
	/// @DnDArgument : "expr" "60"
	/// @DnDArgument : "var" "show_healthbar"
	show_healthbar = 60;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E0F7438
	/// @DnDComment : // Reduce hitpoints by the damage caused by the shooting weapon.
	/// @DnDParent : 6752F637
	/// @DnDArgument : "expr" "-global.shooting[? "damage"]"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hitpoints"
	hitpoints += -global.shooting[? "damage"];

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 22B407AC
	/// @DnDComment : // Create text popup to indicate damage.
	/// @DnDParent : 6752F637
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
	/// @DnDHash : 7382A457
	/// @DnDComment : // Set text to damage amount.
	/// @DnDParent : 6752F637
	/// @DnDArgument : "expr" "-global.shooting[? "damage"]"
	/// @DnDArgument : "var" "_text.text"
	_text.text = -global.shooting[? "damage"];

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 36E67042
	/// @DnDComment : // Set our sprite to the hit sprite.
	/// @DnDParent : 6752F637
	/// @DnDArgument : "spriteind" "hit_sprite"
	sprite_index = hit_sprite;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2BDA2D23
	/// @DnDComment : // If our hitpoints has reached zero...
	/// @DnDParent : 6752F637
	/// @DnDArgument : "expr" "hitpoints <= 0"
	if(hitpoints <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 009B7F5C
		/// @DnDComment : // Destroy this instance.
		/// @DnDParent : 2BDA2D23
		instance_destroy();
	}
}