// Start the game music on a loop.
audio_play_sound(snd_music_game, 0, 1, 1.0, undefined, 1.0);

// Set the experience goal to reach the next level.
global.xp_goal = 10;

// Set current experience.
global.xp = 0;

// Set the current level.
global.level = 1;

// Set the cooldown time for spawning enemies.
global.enemy_spawn_speed = 60;

// Set starting enemy health bonus.
// This is a multiplier, and is increased each wave.
// Result: enemy hp = enemy base hp * health bonus.
global.enemy_health_bonus = 1;

// Create the hero in the center of the room.
instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_hero);

// Execute the shooting weapon reset function,
// initializing values for that weapon.
weapon_shooting_reset();

// Execute the swipe weapon reset function,
// initializing values for that weapon.
weapon_swipe_reset();

// Execute the trail weapon reset function,
// initializing values for that weapon.
weapon_trail_reset();

// Alarm 0 handles enemy spawning.
// Start the alarm here using the global spawn speed variable.
alarm_set(0, global.enemy_spawn_speed);

// Create the pause button.
instance_create_layer(1820, 20, "UpgradeScreen", obj_pause_button);