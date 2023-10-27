// If the game is currently paused...
if(global.paused)
{
	// Increment alarm 0 to stop it triggering
	// while paused.
	alarm_set(0, 1 + alarm_get(0));
}

// If the game is NOT over...
if(!instance_exists(obj_game_over))
{
	// If the hero has run out of hitpoints...
	if(obj_hero.hitpoints <= 0)
	{
		with(obj_hero) instance_destroy();
	
		with(obj_hero_bullet) instance_destroy();
	
		with(obj_enemy) instance_destroy();
	
		with(obj_collectible) instance_destroy();
	
		with(obj_heart) instance_destroy();
	
		// Create game over object.
		instance_create_layer(1920 / 2, 1080 / 2 - 150, "UpgradeScreen", obj_game_over);
	}
}

// If the game is over...
// We do this by checking is an end game screen is present.
if(!(instance_exists(obj_upgrade)) && !(instance_exists(obj_template_complete)))
{
	// If we have reached the experience goal...
	if(global.xp >= global.xp_goal)
	{
		with(obj_enemy) instance_destroy();
	
		with(obj_hero_bullet) instance_destroy();
	
		with(obj_collectible) instance_destroy();
	
		with(obj_heart) instance_destroy();
	
		// If we are on the last wave...
		if(global.level == 1)
		{
			// Create the upgrade screen.
			instance_create_layer(1920 / 2, 1080 / 2 - 150, "Instances", obj_template_complete);
		}
	
		else
		{
			// Level up!
			global.level += 1;
		
			// Execute function to go to the next wave.
			next_wave();
		
			// Create the upgrade screen.
			instance_create_layer(0, 0, "Instances", obj_upgrade_screen);
		}
	}
}