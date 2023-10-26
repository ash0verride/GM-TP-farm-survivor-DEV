// If the hero is NOT currently being hit...
if(!(sprite_index == spr_hero_hit))
{
	// Reduce hitpoints.
	hitpoints += -1;

	// Create a text popup.
	var _text = instance_create_layer(x + 0, y + 0, "UpgradeScreen", obj_text_popup);

	_text.text = 1;

	_text.color = c_red;

	sprite_index = spr_hero_hit;
	image_index = 0;

	with(other) {
		if(sprite_index == spr_pigun_walk)
		{
			sprite_index = attack_sprite;
			image_index = 0;
		}
	}
}