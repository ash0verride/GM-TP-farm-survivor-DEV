/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 085B5AAF
/// @DnDComment : // Start the game music on a loop.
/// @DnDArgument : "soundid" "snd_music_game"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "snd_music_game"
audio_play_sound(snd_music_game, 0, 1, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 1DF9B74A
/// @DnDComment : // Set the experience goal to reach the next level.
/// @DnDArgument : "value" "10"
/// @DnDArgument : "var" "xp_goal"
global.xp_goal = 10;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 188C4D95
/// @DnDComment : // Set current experience.
/// @DnDArgument : "var" "xp"
global.xp = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5C1785A4
/// @DnDComment : // Set the current level.
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "level"
global.level = 1;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 771D6C26
/// @DnDComment : // Set the cooldown time for spawning enemies.
/// @DnDArgument : "value" "60"
/// @DnDArgument : "var" "enemy_spawn_speed"
global.enemy_spawn_speed = 60;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 46720369
/// @DnDComment : // Set starting enemy health bonus.$(13_10)// This is a multiplier, and is increased each wave.$(13_10)// Result: enemy hp = enemy base hp * health bonus.
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "enemy_health_bonus"
global.enemy_health_bonus = 1;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 673B962C
/// @DnDComment : // Create the hero in the center of the room.
/// @DnDArgument : "xpos" "room_width / 2"
/// @DnDArgument : "ypos" "room_height / 2"
/// @DnDArgument : "objectid" "obj_hero"
/// @DnDSaveInfo : "objectid" "obj_hero"
instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_hero);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 3B937257
/// @DnDComment : Execute the shooting weapon reset function,$(13_10)initializing values for that weapon.
/// @DnDArgument : "function" "weapon_shooting_reset"
weapon_shooting_reset();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2E5FF8B3
/// @DnDComment : // Execute the swipe weapon reset function,$(13_10)// initializing values for that weapon.
/// @DnDArgument : "function" "weapon_swipe_reset"
weapon_swipe_reset();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 3995B453
/// @DnDComment : // Execute the trail weapon reset function,$(13_10)// initializing values for that weapon.
/// @DnDArgument : "function" "weapon_trail_reset"
weapon_trail_reset();

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5CB23671
/// @DnDComment : // Alarm 0 handles enemy spawning.$(13_10)// Start the alarm here using the global spawn speed variable.
/// @DnDArgument : "steps" "global.enemy_spawn_speed"
alarm_set(0, global.enemy_spawn_speed);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4F0492B3
/// @DnDComment : // Create the pause button.
/// @DnDArgument : "xpos" "1820"
/// @DnDArgument : "ypos" "20"
/// @DnDArgument : "objectid" "obj_pause_button"
/// @DnDArgument : "layer" ""UpgradeScreen""
/// @DnDSaveInfo : "objectid" "obj_pause_button"
instance_create_layer(1820, 20, "UpgradeScreen", obj_pause_button);