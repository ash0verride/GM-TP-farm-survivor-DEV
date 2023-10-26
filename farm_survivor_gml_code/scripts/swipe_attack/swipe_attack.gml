// Define function to execute a swipe attack.
function swipe_attack() 
{
	// If any enemy was found...
	if(nearest_enemy)
	{
		// Play attack sound effect.
		audio_play_sound(snd_attack_chimes_1, 0, 0, 1, undefined, 1.0);
	
		// Create the swipe attack object.
		instance_create_layer(x + 0, y + 0, "Instances", obj_hero_swipe);
	}
}