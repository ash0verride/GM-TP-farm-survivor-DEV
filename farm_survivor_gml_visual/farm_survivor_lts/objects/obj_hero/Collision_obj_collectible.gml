/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5A14A32F
/// @DnDComment : // Increment experience.
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "xp"
global.xp += 1;

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 7B970A90
/// @DnDComment : // Choose a random pickup sound effect.
/// @DnDInput : 3
/// @DnDArgument : "var" "_sound"
/// @DnDArgument : "option" "snd_pickup_1"
/// @DnDArgument : "option_1" "snd_pickup_2"
/// @DnDArgument : "option_2" "snd_pickup_3"
_sound = choose(snd_pickup_1, snd_pickup_2, snd_pickup_3);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2C43B617
/// @DnDComment : // Play the chosen sound.
/// @DnDArgument : "soundid" "_sound"
/// @DnDArgument : "gain" "1"
audio_play_sound(_sound, 0, 0, 1, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 625EC720
/// @DnDComment : // Apply the follow actions to the other object $(13_10)// (the collectible).
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 028F2D7C
	/// @DnDComment : // Destroy the collectible.
	/// @DnDParent : 625EC720
	instance_destroy();
}