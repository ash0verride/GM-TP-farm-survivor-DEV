/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 48E2FDC3
/// @DnDComment : // Adds two hitpoints as long as its not over max.
/// @DnDArgument : "expr" "min(hitpoints + 2, hitpoints_max)"
/// @DnDArgument : "var" "hitpoints"
hitpoints = min(hitpoints + 2, hitpoints_max);

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 724F96F5
/// @DnDComment : // Chooses sound effect.
/// @DnDInput : 3
/// @DnDArgument : "var" "_sound"
/// @DnDArgument : "option" "snd_pickup_1"
/// @DnDArgument : "option_1" "snd_pickup_2"
/// @DnDArgument : "option_2" "snd_pickup_3"
_sound = choose(snd_pickup_1, snd_pickup_2, snd_pickup_3);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 6CB1CD77
/// @DnDComment : // Plays sound effect.
/// @DnDArgument : "soundid" "_sound"
/// @DnDArgument : "gain" "1"
audio_play_sound(_sound, 0, 0, 1, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 625EC720
/// @DnDComment : // With heart pickup.
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 028F2D7C
	/// @DnDComment : // Destroy pickup.
	/// @DnDParent : 625EC720
	instance_destroy();
}