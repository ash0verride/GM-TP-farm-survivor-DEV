/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 6AC0A794
/// @DnDComment : // Stop all audio.
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 5D1E5FA7
/// @DnDComment : // Play the lose game jingle.
/// @DnDArgument : "soundid" "snd_lose"
/// @DnDSaveInfo : "soundid" "snd_lose"
audio_play_sound(snd_lose, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 222C1D57
/// @DnDComment : // Create exit button.
/// @DnDArgument : "xpos" "-180"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "1080 - 330"
/// @DnDArgument : "objectid" "obj_button_exit"
/// @DnDArgument : "layer" ""Buttons""
/// @DnDSaveInfo : "objectid" "obj_button_exit"
instance_create_layer(x + -180, 1080 - 330, "Buttons", obj_button_exit);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5EFE6B3A
/// @DnDComment : // Create retry button.
/// @DnDArgument : "xpos" "180"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "1080 - 330"
/// @DnDArgument : "objectid" "obj_button_retry"
/// @DnDArgument : "layer" ""Buttons""
/// @DnDSaveInfo : "objectid" "obj_button_retry"
instance_create_layer(x + 180, 1080 - 330, "Buttons", obj_button_retry);