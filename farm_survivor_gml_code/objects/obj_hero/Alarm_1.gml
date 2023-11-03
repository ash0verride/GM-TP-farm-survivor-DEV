// If the nearest enemy is within 250 pixels...
if (nearest_distance < 250)
{
	// Reset the cooldown for this weapon.
	alarm_set(1, max(global.swipe[? "attack_speed"], 1));

	// If this weapon is unlocked...
	if (global.swipe[? "unlocked"])
	{
		// Execute the function that handles this weapon.
		swipe_attack();
	}
}
// The nearest enemy is too far away, but we don't want to fully reset the cooldown...
else
{
	// Set the cooldown to test again next frame.
	alarm_set(1, 1);
}