/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 6AC0A794
/// @DnDComment : // Stops all audio.
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 0F1B7061
/// @DnDComment : Play the win game jingle.
/// @DnDArgument : "soundid" "snd_win"
/// @DnDSaveInfo : "soundid" "snd_win"
audio_play_sound(snd_win, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5EFE6B3A
/// @DnDComment : // Creates the reroll button.
/// @DnDArgument : "xpos" "1920 / 2"
/// @DnDArgument : "ypos" "1080 - 150"
/// @DnDArgument : "objectid" "obj_button_reroll"
/// @DnDArgument : "layer" ""Buttons""
/// @DnDSaveInfo : "objectid" "obj_button_reroll"
instance_create_layer(1920 / 2, 1080 - 150, "Buttons", obj_button_reroll);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 1C0E3A8B
/// @DnDComment : // Calls funtion to generate the upgrades.
/// @DnDArgument : "function" "get_upgrades"
get_upgrades();