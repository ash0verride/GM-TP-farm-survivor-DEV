// If the nearest enemy is within 300 pixels...
if(nearest_distance < 300)
{
	// Reset the cooldown for this weapon.
	alarm_set(2, max(global.trail[? "attack_speed"], 1));

	// If this weapon is unlocked...
	if(global.trail[? "unlocked"])
	{
		// Execute the function that handles the weapon.
		attack_trail();
	}
}

// The nearest enemy is too far away, but we don't want to fully reset the cooldown...
else
{
	// So set the cooldown to test again next frame.
	alarm_set(2, 1);
}