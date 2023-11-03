/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1061A679
/// @DnDComment : // Define function to execute trail attack.
/// @DnDArgument : "funcName" "attack_trail"
function attack_trail() 
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0177191C
	/// @DnDComment : // If there is an enemy found...
	/// @DnDParent : 1061A679
	/// @DnDArgument : "expr" "nearest_enemy"
	if(nearest_enemy)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 0E3E2F5C
		/// @DnDComment : // Play sound effect.
		/// @DnDParent : 0177191C
		/// @DnDArgument : "soundid" "snd_attack_chimes_2"
		/// @DnDArgument : "gain" "1"
		/// @DnDSaveInfo : "soundid" "snd_attack_chimes_2"
		audio_play_sound(snd_attack_chimes_2, 0, 0, 1, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6EC23A9E
		/// @DnDComment : // Create trail attack object.
		/// @DnDParent : 0177191C
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_hero_trail"
		/// @DnDSaveInfo : "objectid" "obj_hero_trail"
		instance_create_layer(x + 0, y + 0, "Instances", obj_hero_trail);
	}
}