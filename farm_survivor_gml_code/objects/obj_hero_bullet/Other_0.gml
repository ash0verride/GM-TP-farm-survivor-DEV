if (!global.paused)
{
	image_alpha -= delta_time * 0.000001 * 4;
}

if (image_alpha <= 0)
{
	// Destroy this instance when it leaves the room bounds.
	instance_destroy();
}