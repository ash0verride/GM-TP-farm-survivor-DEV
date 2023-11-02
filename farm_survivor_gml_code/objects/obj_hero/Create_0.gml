// Set the maximum hitpoints that the player can have.
hitpoints_max = 10;

// Set the starting hitpoints of the player (to the max).
hitpoints = hitpoints_max;

// Variables for tracking enemies.
nearest_enemy = undefined;
nearest_distance = 1000;

// Start alarm for the shooting weapon.
alarm_set(0, 30);

// Start alarm for the swipe weapon.
alarm_set(1, 30);

// Start alarm for the trail weapon.
alarm_set(2, 30);

// Create shadow object to follow.
var _shadow = instance_create_layer(x, y, "Shadows", obj_shadow);
// Set shadow owner.
_shadow.owner_object = self;