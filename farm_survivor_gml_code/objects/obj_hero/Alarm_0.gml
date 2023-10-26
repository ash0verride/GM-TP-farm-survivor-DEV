// If the nearest enemy is within 1000 pixels...
if(nearest_distance < 1000)
{
	// Reset the cooldown for this weapon.
	alarm_set(0, max(global.shooting[? "attack_speed"], 1));

	// If this weapon is unlocked...
	if(global.shooting[? "unlocked"])
	{
		// Execute the function to handle this weapon.
		shooting_attack();
	}
}

// The nearest enemy is too far away, but we don't want to fully reset the cooldown...
else
{
	// Set the cooldown to test again next frame.
	alarm_set(0, 1);
}