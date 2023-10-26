// Reduce lifetime.
lifetime += -1;

// If lifetime has reduced to zero...
if(lifetime <= 0)
{
	// Destroy the text popup.
	instance_destroy();
}