if(!(instance_exists(obj_pause_screen)))
{
	// Reduce lifetime.
	lifetime += -1;

	// If lifetime has reduced to zero...
	if(lifetime <= 0)
	{
		image_alpha -= delta_time * 0.000001 * 2;
		
		if (image_alpha <= 0)
		{
			// Destroy the text popup.
			instance_destroy();
		}
	}
}