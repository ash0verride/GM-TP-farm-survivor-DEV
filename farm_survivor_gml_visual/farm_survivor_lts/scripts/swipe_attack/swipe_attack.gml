/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1061A679
/// @DnDComment : // Define function to execute a swipe attack.
/// @DnDArgument : "funcName" "swipe_attack"
function swipe_attack() 
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0177191C
	/// @DnDComment : // If any enemy was found...
	/// @DnDParent : 1061A679
	/// @DnDArgument : "expr" "nearest_enemy"
	if(nearest_enemy)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 69232B86
		/// @DnDComment : // Play attack sound effect.
		/// @DnDParent : 0177191C
		/// @DnDArgument : "soundid" "snd_attack_chimes_1"
		/// @DnDArgument : "gain" "1"
		/// @DnDSaveInfo : "soundid" "snd_attack_chimes_1"
		audio_play_sound(snd_attack_chimes_1, 0, 0, 1, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2E065F21
		/// @DnDComment : // Create the swipe attack object.
		/// @DnDParent : 0177191C
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_hero_swipe"
		/// @DnDSaveInfo : "objectid" "obj_hero_swipe"
		instance_create_layer(x + 0, y + 0, "Instances", obj_hero_swipe);
	}
}