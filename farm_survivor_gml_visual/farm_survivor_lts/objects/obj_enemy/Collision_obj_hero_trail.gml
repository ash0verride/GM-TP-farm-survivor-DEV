/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6752F637
/// @DnDComment : If our hitpoints is over 0,$(13_10)$(13_10)AND we are not currently being hit.
/// @DnDInput : 2
/// @DnDArgument : "expr" "hitpoints > 0"
/// @DnDArgument : "expr_1" "sprite_index != hit_sprite"
if(hitpoints > 0 && sprite_index != hit_sprite)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 0C803190
	/// @DnDComment : Choose a random sound effect for being hit.
	/// @DnDInput : 3
	/// @DnDParent : 6752F637
	/// @DnDArgument : "var" "_sound"
	/// @DnDArgument : "option" "snd_melee_hit_1"
	/// @DnDArgument : "option_1" "snd_melee_hit_2"
	/// @DnDArgument : "option_2" "snd_melee_hit_3"
	_sound = choose(snd_melee_hit_1, snd_melee_hit_2, snd_melee_hit_3);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 02EAAE4A
	/// @DnDComment : Play the chsoen sound.
	/// @DnDParent : 6752F637
	/// @DnDArgument : "soundid" "_sound"
	/// @DnDArgument : "gain" "1"
	audio_play_sound(_sound, 0, 0, 1, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 199F1D8A
	/// @DnDComment : Set the healthbar timer to 60.$(13_10)$(13_10)This will cause the healthbar to be visible for that many game steps.
	/// @DnDParent : 6752F637
	/// @DnDArgument : "expr" "60"
	/// @DnDArgument : "var" "show_healthbar"
	show_healthbar = 60;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E0F7438
	/// @DnDComment : Reduce hitpoints by the damage caused by the trail weapon.
	/// @DnDParent : 6752F637
	/// @DnDArgument : "expr" "-global.trail[? "damage"]"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hitpoints"
	hitpoints += -global.trail[? "damage"];

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0E254850
	/// @DnDComment : Create text popup to indicate damage.
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
	/// @DnDHash : 667A5285
	/// @DnDComment : Set text to the damage amount.
	/// @DnDParent : 6752F637
	/// @DnDArgument : "expr" "-global.trail[? "damage"]"
	/// @DnDArgument : "var" "_text.text"
	_text.text = -global.trail[? "damage"];

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 36E67042
	/// @DnDComment : Set sprite to the hit sprite.
	/// @DnDParent : 6752F637
	/// @DnDArgument : "spriteind" "hit_sprite"
	sprite_index = hit_sprite;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2BDA2D23
	/// @DnDComment : If hitpoints has reached zero...
	/// @DnDParent : 6752F637
	/// @DnDArgument : "expr" "hitpoints <= 0"
	if(hitpoints <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 009B7F5C
		/// @DnDComment : Destroy this instance.
		/// @DnDParent : 2BDA2D23
		instance_destroy();
	}
}