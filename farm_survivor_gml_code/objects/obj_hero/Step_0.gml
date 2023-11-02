// If the game is paused...
if (global.paused)
{
	// Increment our weapon cooldown timers
	// so that they don't trigger while we're
	// paused.
	alarm_set(0, alarm_get(0) + 1);
	alarm_set(1, alarm_get(1) + 1);
	alarm_set(2, alarm_get(2) + 1);

	// Exit this event while paused.
	exit;
}

// Check if game is running.
if (instance_exists(obj_upgrade) || instance_exists(obj_template_complete) || instance_exists(obj_game_over))
{
	// Increment our weapon cooldown timers
	// so that they don't trigger while we're
	// paused.
	alarm_set(0, 1 + alarm_get(0));
	alarm_set(1, 1 + alarm_get(1));
	alarm_set(2, 1 + alarm_get(2));
	
	// Stop moving the hero.
	speed = 0;

	// Exit event while on upgrade screen.
	exit;
}

// Execute player movement function.
player_movement();

// Execute function that keeps the player in the room.
keep_in_room();

// Set depth to minus our y position.
// This is also done in enemies, with the
// result being instances higher up on the screen
// being drawn first.
depth = -y;

// Find the nearest enemy.
// And reset the distance to some high number.
nearest_enemy = instance_nearest(x, y, obj_enemy);
nearest_distance = 1000;

// If an enemy instance is found.
if (nearest_enemy)
{
	// Get the distance to that enemy.
	nearest_distance = point_distance(x, y, nearest_enemy.x, nearest_enemy.y);
}